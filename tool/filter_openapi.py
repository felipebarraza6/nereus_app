#!/usr/bin/env python3
"""Filter the Nereus OpenAPI spec to the tags used by nereus_app v1."""

from __future__ import annotations

import argparse
import copy
import json
import sys
from collections.abc import Iterable
from pathlib import Path

import yaml

WANTED_TAGS = {
    "accounts",
    "iot-telemetry",
    "alerts",
    "support",
    "customers",
    "crm",
    "inventory",
    "equipment",
    "branches",
    "surveys",
}
ALERT_PATH_PREFIX = "/api/iot-telemetry/alert-"

# Keep login/session surface plus read-mostly telemetry/support/customers.
# The generator still emits models for remaining operations in these tags.
DROP_PATH_PREFIXES = (
    "/api/iot-telemetry/compliance-configs",
    "/api/iot-telemetry/mqtt-brokers",
    "/api/iot-telemetry/providers",
    "/api/iot-telemetry/device-configs",
)


def _load(path: Path) -> dict:
    with path.open() as handle:
        return yaml.safe_load(handle)


def _dump(spec: dict, path: Path) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w") as handle:
        yaml.safe_dump(
            spec,
            handle,
            sort_keys=False,
            allow_unicode=True,
            width=120,
        )


def _iter_ops(item: dict) -> Iterable[tuple[str, dict]]:
    for method, op in item.items():
        if method in {"parameters", "servers", "summary", "description", "$ref"}:
            continue
        if method.startswith("x-"):
            continue
        if isinstance(op, dict):
            yield method, op


def _collect_refs(node: object, found: set[str]) -> None:
    if isinstance(node, dict):
        ref = node.get("$ref")
        if isinstance(ref, str) and ref.startswith("#/components/"):
            found.add(ref)
        for value in node.values():
            _collect_refs(value, found)
    elif isinstance(node, list):
        for value in node:
            _collect_refs(value, found)


def _resolve_component(spec: dict, ref: str) -> object | None:
    parts = ref.lstrip("#/").split("/")
    cursor: object = spec
    for part in parts:
        if not isinstance(cursor, dict) or part not in cursor:
            return None
        cursor = cursor[part]
    return cursor


def _prune_components(spec: dict) -> None:
    components = spec.get("components") or {}
    used: set[str] = set()
    pending: set[str] = set()
    _collect_refs(spec.get("paths"), pending)
    _collect_refs(spec.get("security"), pending)
    while pending:
        ref = pending.pop()
        if ref in used:
            continue
        used.add(ref)
        target = _resolve_component(spec, ref)
        if target is not None:
            extra: set[str] = set()
            _collect_refs(target, extra)
            pending.update(extra - used)

    for section, items in list(components.items()):
        if not isinstance(items, dict):
            continue
        keep = {}
        for name, value in items.items():
            ref = f"#/components/{section}/{name}"
            if ref in used:
                keep[name] = value
        components[section] = keep
    spec["components"] = components


def filter_spec(spec: dict) -> dict:
    out = copy.deepcopy(spec)
    paths = out.get("paths") or {}
    kept: dict = {}
    for path, item in paths.items():
        if not isinstance(item, dict):
            continue
        if any(path.startswith(prefix) for prefix in DROP_PATH_PREFIXES):
            continue
        new_item = {k: v for k, v in item.items() if k not in set()}
        ops_kept = False
        for method, op in list(_iter_ops(item)):
            tags = list(op.get("tags") or [])
            if path.startswith(ALERT_PATH_PREFIX) and "alerts" not in tags:
                tags.append("alerts")
                op = dict(op)
                op["tags"] = tags
                new_item[method] = op
            if WANTED_TAGS.intersection(tags):
                ops_kept = True
            else:
                new_item.pop(method, None)
        if ops_kept:
            kept[path] = new_item
    out["paths"] = kept
    tags = []
    for tag in out.get("tags") or []:
        name = tag.get("name") if isinstance(tag, dict) else tag
        if name in WANTED_TAGS:
            tags.append(tag)
    if "alerts" not in {t.get("name") if isinstance(t, dict) else t for t in tags}:
        tags.append(
            {
                "name": "alerts",
                "description": "Disparos de alerta IoT (alert-triggers).",
            }
        )
    out["tags"] = tags
    _prune_components(out)
    info = dict(out.get("info") or {})
    info["title"] = "Nereus App API (filtered)"
    info["description"] = (
        "Subset of Yggdra/Nereus OpenAPI used by nereus_app v1: "
        "accounts, iot-telemetry, alerts, support, customers."
    )
    out["info"] = info
    return out


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--source",
        default=str(
            Path.home() / "code/nereus_api_ref/api/schema/openapi.yaml",
        ),
    )
    parser.add_argument(
        "--out",
        default=str(Path(__file__).resolve().parents[1] / "api/openapi.filtered.yaml"),
    )
    args = parser.parse_args()
    source = Path(args.source)
    dest = Path(args.out)
    if not source.exists():
        print(f"missing source spec: {source}", file=sys.stderr)
        return 1
    spec = _load(source)
    filtered = filter_spec(spec)
    _dump(filtered, dest)
    meta = {
        "paths": len(filtered.get("paths") or {}),
        "schemas": len(((filtered.get("components") or {}).get("schemas") or {})),
        "tags": [t.get("name") if isinstance(t, dict) else t for t in filtered.get("tags") or []],
    }
    print(json.dumps(meta, indent=2))
    print(f"wrote {dest}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
