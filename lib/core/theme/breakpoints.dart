import 'package:flutter/material.dart';

/// Responsive breakpoints for Nereus.
///
/// Mirrors common Material Design window size classes so the shell and
/// pages can adapt cleanly across phone, tablet and desktop.
enum NereusBreakpoint {
  compact,
  medium,
  expanded,
  large,
  extraLarge;

  factory NereusBreakpoint.fromWidth(double width) {
    if (width < 600) return NereusBreakpoint.compact;
    if (width < 840) return NereusBreakpoint.medium;
    if (width < 1200) return NereusBreakpoint.expanded;
    if (width < 1600) return NereusBreakpoint.large;
    return NereusBreakpoint.extraLarge;
  }
}

extension NereusBreakpointX on BuildContext {
  NereusBreakpoint get breakpoint {
    return NereusBreakpoint.fromWidth(MediaQuery.sizeOf(this).width);
  }

  bool get isCompact => breakpoint == NereusBreakpoint.compact;
  bool get isMedium => breakpoint == NereusBreakpoint.medium;
  bool get isExpandedOrWider =>
      breakpoint.index >= NereusBreakpoint.expanded.index;
  bool get isLargeOrWider =>
      breakpoint.index >= NereusBreakpoint.large.index;
}

/// Convenience to read width/height without repeating MediaQuery boilerplate.
extension NereusMediaQueryX on BuildContext {
  Size get screenSize => MediaQuery.sizeOf(this);
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;
}
