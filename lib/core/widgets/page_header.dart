import 'package:flutter/material.dart';
import 'package:nereus_app/core/theme/breakpoints.dart';
import 'package:nereus_app/core/theme/tokens.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
    required this.title,
    this.subtitle,
    this.actions = const [],
  });

  final String title;
  final String? subtitle;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final compact = context.isCompact;
    return Padding(
      padding: EdgeInsets.fromLTRB(
        NereusTokens.spaceMd,
        compact ? NereusTokens.spaceSm : NereusTokens.spaceMd,
        NereusTokens.spaceMd,
        compact ? NereusTokens.spaceSm : NereusTokens.spaceMd,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: compact ? text.titleLarge : text.headlineMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                if (subtitle != null && subtitle!.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    subtitle!,
                    style: text.bodyMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
          if (actions.isNotEmpty) ...[
            const SizedBox(width: NereusTokens.spaceSm),
            Wrap(
              spacing: NereusTokens.spaceSm,
              runSpacing: NereusTokens.spaceSm,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: actions,
            ),
          ],
        ],
      ),
    );
  }
}
