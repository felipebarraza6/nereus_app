# Nereus design system

Light-first glass UI on Material 3. Palette: water teal `#0F766E`, mint `#5EEAD4`, mist `#E7F6F3`, foam `#F7FCFB`, ink `#0F2A2C`. Dark canvas `#071416`.

## Tokens

Defined in `lib/core/theme/tokens.dart`: color, type, spacing (4/8/16/24/32), radius (12/18/28/pill), elevation shadows, motion (180ms / 280ms).

## Glass

Reusable widgets in `lib/core/theme/glass.dart`:

- `GlassSurface` — frosted panel (`BackdropFilter` blur 18, translucent tint, 1px luminous border).
- `GlassCard` — tappable card.
- `GlassAppBar` / `GlassNavBar`.
- `AnimatedWaterBackdrop` — slow teal/mint gradient.

Performance:

- One blur layer per chrome region; content cards share the same recipe.
- Wrap blur in `RepaintBoundary`.
- Fall back to solid translucent fills when `disableAnimations`, `accessibleNavigation`, or a very small shortest side is set.

## Layout

- Phone: bottom `GlassNavBar`.
- ≥900px: `NavigationRail`.
- Device list / map toggle on the same route.

## States

Every data screen handles shimmer skeletons, empty, error + retry, and the global offline banner.

## Accessibility

AA contrast on ink vs foam/mint, 48px tap targets on primary actions, `Semantics` labels on cards, text scaling from the system.
