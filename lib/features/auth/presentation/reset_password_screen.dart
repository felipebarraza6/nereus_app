import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';

class ResetPasswordScreen extends ConsumerStatefulWidget {
  const ResetPasswordScreen({required this.token, super.key});

  final String token;

  static const successMessage = 'Contraseña actualizada. Ya puedes ingresar.';

  @override
  ConsumerState<ResetPasswordScreen> createState() =>
      _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends ConsumerState<ResetPasswordScreen> {
  final _password = TextEditingController();
  final _confirm = TextEditingController();
  final _form = GlobalKey<FormState>();
  bool _busy = false;
  bool _obscure = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _password.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _password.dispose();
    _confirm.dispose();
    super.dispose();
  }

  String get _strengthHint {
    final value = _password.text;
    if (value.isEmpty) return 'Usa al menos 8 caracteres';
    if (value.length < 8) return 'Muy corta — mínimo 8 caracteres';
    final letters = value.contains(RegExp('[A-Za-z]'));
    final digits = value.contains(RegExp('[0-9]'));
    if (value.length >= 12 && letters && digits) {
      return 'Contraseña fuerte';
    }
    if (letters && digits) return 'Contraseña aceptable';
    return 'Agrega letras y números para más seguridad';
  }

  Future<void> _submit() async {
    if (!(_form.currentState?.validate() ?? false)) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await ref.read(authRepositoryProvider).resetPasswordConfirm(
            token: widget.token,
            newPassword: _password.text,
            confirmPassword: _confirm.text,
          );
      if (!mounted) return;
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(content: Text(ResetPasswordScreen.successMessage)),
        );
      context.go('/login');
    } on Object catch (error) {
      if (!mounted) return;
      setState(() {
        _error = error is ApiError
            ? error.message
            : 'No pudimos actualizar la contraseña. Intenta de nuevo.';
      });
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  InputDecoration _passwordDecoration(String label, {required Key toggleKey}) {
    return InputDecoration(
      labelText: label,
      suffixIcon: IconButton(
        key: toggleKey,
        tooltip: _obscure ? 'Mostrar contraseña' : 'Ocultar contraseña',
        onPressed: () => setState(() => _obscure = !_obscure),
        icon: Icon(
          _obscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return AnimatedWaterBackdrop(
      child: Scaffold(
        appBar: GlassAppBar(
          title: const Text('Nueva contraseña'),
          leading: BackButton(onPressed: () => context.go('/login')),
        ),
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 440),
            child: Padding(
              padding: const EdgeInsets.all(NereusTokens.spaceLg),
              child: GlassCard(
                child: Form(
                  key: _form,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Elige una contraseña nueva para tu cuenta Nereus.',
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        key: const Key('reset-password-new'),
                        controller: _password,
                        obscureText: _obscure,
                        autofillHints: const [AutofillHints.newPassword],
                        textInputAction: TextInputAction.next,
                        decoration: _passwordDecoration(
                          'Nueva contraseña',
                          toggleKey: const Key('reset-password-toggle-new'),
                        ),
                        validator: (value) {
                          if (value == null || value.length < 8) {
                            return 'Mínimo 8 caracteres';
                          }
                          if (value.length > 64) {
                            return 'Máximo 64 caracteres';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 8),
                      Text(
                        _strengthHint,
                        key: const Key('reset-password-strength'),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: scheme.onSurface.withValues(alpha: 0.72),
                            ),
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        key: const Key('reset-password-confirm'),
                        controller: _confirm,
                        obscureText: _obscure,
                        autofillHints: const [AutofillHints.newPassword],
                        textInputAction: TextInputAction.done,
                        onFieldSubmitted: (_) => _submit(),
                        decoration: _passwordDecoration(
                          'Confirmar contraseña',
                          toggleKey: const Key('reset-password-toggle-confirm'),
                        ),
                        validator: (value) {
                          if (value != _password.text) {
                            return 'Las contraseñas no coinciden';
                          }
                          return null;
                        },
                      ),
                      if (_error != null) ...[
                        const SizedBox(height: 12),
                        Text(
                          _error!,
                          key: const Key('reset-password-error'),
                          style: TextStyle(color: scheme.error),
                        ),
                      ],
                      const SizedBox(height: 16),
                      FilledButton(
                        key: const Key('reset-password-submit'),
                        onPressed: _busy ? null : _submit,
                        child: _busy
                            ? const SizedBox(
                                height: 18,
                                width: 18,
                                child: CircularProgressIndicator(strokeWidth: 2),
                              )
                            : const Text('Guardar contraseña'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
