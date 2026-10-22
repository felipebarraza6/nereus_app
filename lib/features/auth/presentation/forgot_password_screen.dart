import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';

class ForgotPasswordScreen extends ConsumerStatefulWidget {
  const ForgotPasswordScreen({super.key});

  static const successMessage =
      'Si el correo existe, te enviamos instrucciones';

  @override
  ConsumerState<ForgotPasswordScreen> createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  final _email = TextEditingController();
  final _form = GlobalKey<FormState>();
  bool _busy = false;
  String? _error;
  bool _sent = false;

  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!(_form.currentState?.validate() ?? false)) return;
    setState(() {
      _busy = true;
      _error = null;
      _sent = false;
    });
    try {
      await ref.read(authRepositoryProvider).forgotPassword(_email.text);
      if (!mounted) return;
      setState(() => _sent = true);
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(content: Text(ForgotPasswordScreen.successMessage)),
        );
    } on Object catch (error) {
      if (!mounted) return;
      setState(() {
        _error = error is ApiError
            ? error.message
            : 'No pudimos enviar las instrucciones. Intenta de nuevo.';
      });
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return AnimatedWaterBackdrop(
      child: Scaffold(
        appBar: GlassAppBar(
          title: const Text('Recuperar contraseña'),
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
                        'Te enviaremos instrucciones si el correo existe en el sistema.',
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        key: const Key('forgot-password-email'),
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        autofillHints: const [AutofillHints.email],
                        textInputAction: TextInputAction.send,
                        onFieldSubmitted: (_) => _submit(),
                        decoration: const InputDecoration(
                          labelText: 'Correo electrónico',
                        ),
                        validator: (value) =>
                            (value == null || !value.contains('@'))
                                ? 'Ingresa un correo válido'
                                : null,
                      ),
                      if (_error != null) ...[
                        const SizedBox(height: 12),
                        Text(
                          _error!,
                          key: const Key('forgot-password-error'),
                          style: TextStyle(color: scheme.error),
                        ),
                      ],
                      if (_sent) ...[
                        const SizedBox(height: 12),
                        Text(
                          ForgotPasswordScreen.successMessage,
                          key: const Key('forgot-password-success'),
                          style: TextStyle(color: scheme.primary),
                        ),
                      ],
                      const SizedBox(height: 16),
                      FilledButton(
                        key: const Key('forgot-password-submit'),
                        onPressed: _busy ? null : _submit,
                        child: _busy
                            ? const SizedBox(
                                height: 18,
                                width: 18,
                                child: CircularProgressIndicator(strokeWidth: 2),
                              )
                            : const Text('Enviar instrucciones'),
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
