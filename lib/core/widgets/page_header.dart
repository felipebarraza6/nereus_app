import 'package:flutter/material.dart';
import 'package:nereus_app/core/theme/breakpoints.dart';
import 'package:nereus_app/core/theme/tokens.dart';

/// Page header matching `nereus_smarthydro/src/components/desk.tsx` (`PageHead`).
class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
    required this.title,
    this.subtitle,
    this.kicker,
    this.actions = const [],
  });

  final String title;
  final String? subtitle;
  final String? kicker;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final dark = Theme.of(context).brightness == Brightness.dark;
    final compact = context.isCompact;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;

    return Padding(
      padding: EdgeInsets.fromLTRB(
        NereusTokens.spaceMd,
        compact ? NereusTokens.spaceSm : NereusTokens.spaceMd,
        NereusTokens.spaceMd,
        compact ? NereusTokens.spaceSm : NereusTokens.spaceMd,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (kicker != null && kicker!.isNotEmpty) ...[
                  Text(
                    kicker!.toUpperCase(),
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                      color: muted,
                    ),
                  ),
                  const SizedBox(height: 2),
                ],
                Text(
                  title,
                  style: (compact ? text.titleLarge : text.headlineMedium)
                      ?.copyWith(
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.5,
                  ),
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
            Flexible(
              child: Wrap(
                spacing: NereusTokens.spaceSm,
                runSpacing: NereusTokens.spaceSm,
                alignment: WrapAlignment.end,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: actions,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
