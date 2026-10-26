part of 'login_screen.dart';

/// Exact frosted stage from `nereus_smarthydro/src/routes/conexion.tsx`:
/// `rounded-[22px] border border-white/75 bg-white/45 p-6 shadow-[0_24px_60px_rgba(25,54,101,0.14)] backdrop-blur-2xl`
/// with `.login-ring` and `.login-ring-late`, centered `ikolu3-mark.svg`,
/// `IKOLU3`, lime `Entrar` pill button (`#D6DB12`), and `SmartHydroAttribution`.
class _LoginStageCard extends StatelessWidget {
  const _LoginStageCard({
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.busy,
    required this.obscure,
    required this.error,
    required this.showDemo,
    required this.onToggleObscure,
    required this.onSubmit,
    required this.onForgotPassword,
    required this.onEnterDemo,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final bool busy;
  final bool obscure;
  final String? error;
  final bool showDemo;
  final VoidCallback onToggleObscure;
  final VoidCallback onSubmit;
  final VoidCallback onForgotPassword;
  final VoidCallback onEnterDemo;

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    final fg = dark ? NereusTokens.darkInk : NereusTokens.navy;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            IgnorePointer(
              child: Container(
                width: 340,
                height: 340,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: NereusTokens.hydroBlue.withValues(alpha: 0.18),
                  ),
                ),
              ),
            ),
            IgnorePointer(
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: NereusTokens.hydroLime.withValues(alpha: 0.28),
                  ),
                ),
              ),
            ),
            Semantics(
              label: 'Formulario de ingreso',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(NereusTokens.radiusXl),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: dark
                          ? NereusTokens.darkPanel.withValues(alpha: 0.78)
                          : Colors.white.withValues(alpha: 0.55),
                      borderRadius: BorderRadius.circular(NereusTokens.radiusXl),
                      border: Border.all(
                        color: dark
                            ? NereusTokens.darkLine
                            : Colors.white.withValues(alpha: 0.8),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x24193665),
                          blurRadius: 60,
                          offset: Offset(0, 24),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Form(
                        key: formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Center(child: NereusLogoMark(size: 44)),
                            const SizedBox(height: 6),
                            Text(
                              'IKOLU3',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 2.4,
                                color: fg,
                              ),
                            ),
                            const SizedBox(height: 18),
                            TextFormField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              autofillHints: const [AutofillHints.email],
                              decoration: InputDecoration(
                                labelText: 'Correo',
                                hintText: 'Correo',
                                fillColor: dark
                                    ? NereusTokens.darkRaised
                                    : Colors.white.withValues(alpha: 0.75),
                              ),
                              validator: (value) =>
                                  (value == null || !value.contains('@'))
                                      ? 'Ingresa un correo válido'
                                      : null,
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              controller: passwordController,
                              obscureText: obscure,
                              textInputAction: TextInputAction.done,
                              onFieldSubmitted: (_) => busy ? null : onSubmit(),
                              autofillHints: const [AutofillHints.password],
                              decoration: InputDecoration(
                                labelText: 'Contraseña',
                                hintText: 'Contraseña',
                                fillColor: dark
                                    ? NereusTokens.darkRaised
                                    : Colors.white.withValues(alpha: 0.75),
                                suffixIcon: IconButton(
                                  tooltip: obscure
                                      ? 'Mostrar contraseña'
                                      : 'Ocultar contraseña',
                                  onPressed: onToggleObscure,
                                  icon: Icon(
                                    obscure
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    size: 17,
                                  ),
                                ),
                              ),
                              validator: (value) =>
                                  (value == null || value.isEmpty)
                                      ? 'Ingresa tu contraseña'
                                      : null,
                            ),
                            if (error != null) ...[
                              const SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  error!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: NereusTokens.amber,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                            const SizedBox(height: 14),
                            FilledButton(
                              onPressed: busy ? null : onSubmit,
                              style: FilledButton.styleFrom(
                                backgroundColor: NereusTokens.hydroLime,
                                foregroundColor: NereusTokens.navy,
                                minimumSize: const Size.fromHeight(42),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    NereusTokens.radiusPill,
                                  ),
                                ),
                              ),
                              child: busy
                                  ? const SizedBox(
                                      height: 16,
                                      width: 16,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        color: NereusTokens.navy,
                                      ),
                                    )
                                  : const Text('Entrar'),
                            ),
                            const SizedBox(height: 4),
                            TextButton(
                              onPressed: onForgotPassword,
                              style: TextButton.styleFrom(
                                foregroundColor: muted,
                              ),
                              child: const Text('¿Olvidaste tu contraseña?'),
                            ),
                            if (showDemo) ...[
                              const SizedBox(height: 2),
                              OutlinedButton(
                                onPressed: busy ? null : onEnterDemo,
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      NereusTokens.radiusPill,
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Entrar con datos de demostración',
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const SmartHydroAttribution(),
      ],
    );
  }
}

/// Exact port of `nereus_smarthydro/src/routes/index.tsx` hero + `Escritorio`
/// cards for wide desktop screens.
class _SmartHydroDeskPitch extends StatelessWidget {
  const _SmartHydroDeskPitch({
    required this.busy,
    required this.onOpenDemoModule,
  });

  final bool busy;
  final ValueChanged<String> onOpenDemoModule;

  static const _cards = [
    (
      title: 'Centro',
      subtitle: 'Resumen vivo del día',
      detail: 'Dispositivos, negocios, terreno y alertas en una sola vista.',
      route: '/',
      icon: Icons.layers_outlined,
    ),
    (
      title: 'CRM',
      subtitle: 'Prospectos · embudo · propuestas',
      detail: 'El camino comercial completo hasta convertir en cliente.',
      route: '/pipeline',
      icon: Icons.handshake_outlined,
    ),
    (
      title: 'Operaciones',
      subtitle: 'Clientes 360 · levantamientos · activos',
      detail: 'Ficha del cliente, formularios de terreno y equipos con serie.',
      route: '/clients',
      icon: Icons.explore_outlined,
    ),
    (
      title: 'Dispositivos',
      subtitle: 'Telemetría · series · alertas',
      detail: 'Caudal, nivel, acumulado y umbrales por punto de captación.',
      route: '/devices',
      icon: Icons.sensors_outlined,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final dark = Theme.of(context).brightness == Brightness.dark;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/brand_logo.png',
              height: 34,
              fit: BoxFit.contain,
              errorBuilder: (_, __, ___) => const SizedBox.shrink(),
            ),
            const SizedBox(width: 14),
            Container(width: 1, height: 24, color: NereusTokens.line),
            const SizedBox(width: 14),
            const NereusLogoMark(size: 26),
            const SizedBox(width: 8),
            Text(
              'IKOLU3',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                letterSpacing: 2.4,
                color: dark ? NereusTokens.darkInk : NereusTokens.navy,
              ),
            ),
          ],
        ),
        const SizedBox(height: 22),
        Text(
          'Smart Hydro, en una sola corriente.',
          style: textTheme.displaySmall?.copyWith(
            fontSize: 38,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.9,
            height: 1.08,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'El escritorio une el flujo comercial, la operación de campo y las personas de la empresa. Entra a cualquier módulo con datos de demostración o conéctate con tu cuenta.',
          style: textTheme.bodyLarge?.copyWith(color: muted, fontSize: 15),
        ),
        const SizedBox(height: 24),
        Text(
          'ESCRITORIO',
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
            color: muted,
          ),
        ),
        const SizedBox(height: 10),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.75,
          children: [
            for (final card in _cards)
              GlassCard(
                onTap: busy ? null : () => onOpenDemoModule(card.route),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            color: NereusTokens.navy,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            card.icon,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Abrir →',
                          style: TextStyle(fontSize: 11.5, color: muted),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(card.title, style: textTheme.titleMedium),
                    Text(
                      card.subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 11.5, color: muted),
                    ),
                    const SizedBox(height: 4),
                    Expanded(
                      child: Text(
                        card.detail,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 12, color: muted),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }
}
