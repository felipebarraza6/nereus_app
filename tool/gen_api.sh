#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SOURCE="${NEREUS_OPENAPI_SOURCE:-$HOME/code/nereus_api_ref/api/schema/openapi.yaml}"
FILTERED="$ROOT/api/openapi.filtered.yaml"
OUT="$ROOT/packages/nereus_api_client"
CLI_VERSION="${OPENAPI_GENERATOR_CLI_VERSION:-2.42.0}"
GENERATOR_VERSION="${OPENAPI_GENERATOR_VERSION:-7.16.0}"

export JAVA_HOME="${JAVA_HOME:-/home/felipe-barraza/jdk/jdk-17.0.2}"
export PATH="$JAVA_HOME/bin:$PATH"

python3 "$ROOT/tool/filter_openapi.py" --source "$SOURCE" --out "$FILTERED"

rm -rf "$OUT"
mkdir -p "$OUT"

npx --yes "@openapitools/openapi-generator-cli@$CLI_VERSION" version-manager set "$GENERATOR_VERSION"
npx --yes "@openapitools/openapi-generator-cli@$CLI_VERSION" generate \
  -i "$FILTERED" \
  -g dart-dio \
  -o "$OUT" \
  --additional-properties=pubName=nereus_api_client,serializationLibrary=json_serializable,enumUnknownDefaultCase=true \
  --skip-validate-spec

# Generated package uses its own analysis; keep it independent of the app lints.
if [[ -f "$OUT/pubspec.yaml" ]]; then
  python3 - "$OUT/pubspec.yaml" <<'PY'
from pathlib import Path
import sys
p = Path(sys.argv[1])
text = p.read_text()
text = text.replace("sdk: '>=3.5.0 <4.0.0'", "sdk: ^3.13.5")
text = text.replace('sdk: ">=3.5.0 <4.0.0"', "sdk: ^3.13.5")
p.write_text(text)
PY
  python3 - "$OUT" <<'PY'
from pathlib import Path
import sys
root = Path(sys.argv[1]) / "lib/src/model"
for name in ("ticket_attachment_request.dart", "work_order_attachment_request.dart"):
    p = root / name
    text = p.read_text()
    text = text.replace("required  this.file,", " this.file,")
    text = text.replace("@JsonKey(ignore: true)\n\n\n  final MultipartFile file;",
                        "@JsonKey(includeFromJson: false, includeToJson: false)\n\n\n  final MultipartFile? file;")
    p.write_text(text)
for p in Path(sys.argv[1]).joinpath("lib/src/model").glob("*.dart"):
    text = p.read_text()
    text = text.replace(
        "const TicketSubmitRequestPriorityEnum._('MEDIUM')",
        "TicketSubmitRequestPriorityEnum.MEDIUM",
    )
    p.write_text(text)
PY
  (cd "$OUT" && dart pub get)
  (cd "$OUT" && dart run build_runner build --delete-conflicting-outputs)
fi

echo "Generated $OUT"
