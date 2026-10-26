import 'package:flutter/material.dart';
import 'package:nereus_app/core/theme/tokens.dart';

class FormPad extends StatelessWidget {
  const FormPad({
    super.key,
    required this.children,
    this.onSubmit,
    this.submitLabel = 'Guardar',
    this.busy = false,
    this.error,
  });

  final List<Widget> children;
  final VoidCallback? onSubmit;
  final String submitLabel;
  final bool busy;
  final String? error;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return ListView(
      padding: const EdgeInsets.all(NereusTokens.spaceMd),
      children: [
        for (final child in children) ...[
          child,
          const SizedBox(height: 12),
        ],
        if (error != null)
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: scheme.error.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(NereusTokens.radiusSm),
              border: Border.all(color: scheme.error.withValues(alpha: 0.3)),
            ),
            child: Text(
              error!,
              style: TextStyle(color: scheme.error, fontSize: 12.5),
            ),
          ),
        const SizedBox(height: 4),
        FilledButton(
          onPressed: busy ? null : onSubmit,
          child: busy
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : Text(submitLabel),
        ),
      ],
    );
  }
}

class SelectField<T> extends StatelessWidget {
  const SelectField({
    super.key,
    required this.label,
    required this.value,
    required this.items,
    required this.onChanged,
    this.itemLabel,
  });

  final String label;
  final T? value;
  final List<T> items;
  final ValueChanged<T?>? onChanged;
  final String Function(T value)? itemLabel;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      isExpanded: true,
      // DropdownButtonFormField still uses `value` in this Flutter SDK.
      // ignore: deprecated_member_use
      value: value,
      decoration: InputDecoration(labelText: label),
      items: [
        for (final item in items)
          DropdownMenuItem(
            value: item,
            child: Text(
              itemLabel?.call(item) ?? '$item',
              style: const TextStyle(fontSize: 13),
            ),
          ),
      ],
      onChanged: onChanged == null ? null : (value) => onChanged!(value),
    );
  }
}
