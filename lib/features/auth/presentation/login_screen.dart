import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/config/app_config.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/nereus_brand.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';

part 'login_widgets.dart';

/// Exact port of `nereus_smarthydro/src/routes/conexion.tsx` and
/// `nereus_smarthydro/src/routes/index.tsx`.
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _form = GlobalKey<FormState>();
  bool _busy = false;
  bool _obscure = true;
  String? _error;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  Future<void> _enterDemo([String? targetRoute]) async {
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      ref.read(dataModeProvider.notifier).useFixture();
      await ref.read(sessionProvider.future);
      await ref.read(sessionProvider.notifier).login(
            'demo@smarthydro.app',
            'demo',
          );
      if (mounted && targetRoute != null) {
        context.go(targetRoute);
      }
    } on Object catch (error) {
      if (!mounted) return;
      setState(() {
        _error = error is ApiError
            ? error.message
            : 'No pudimos abrir la demostración.';
      });
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _submit() async {
    if (!_form.currentState!.validate()) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await ref.read(sessionProvider.notifier).login(
            _email.text,
            _password.text,
          );
    } on Object catch (error) {
      if (!mounted) return;
      setState(() {
        _error = error is ApiError
            ? error.message
            : 'No pudimos iniciar sesión. Intenta de nuevo.';
      });
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final wide = width >= 960;
    final showDemo = ref.watch(appConfigProvider).debug ||
        ref.watch(dataModeProvider) == NereusDataMode.fixture ||
        wide;

    final loginStage = _LoginStageCard(
      formKey: _form,
      emailController: _email,
      passwordController: _password,
      busy: _busy,
      obscure: _obscure,
      error: _error,
      showDemo: showDemo,
      onToggleObscure: () => setState(() => _obscure = !_obscure),
      onSubmit: _submit,
      onForgotPassword: () => context.go('/forgot-password'),
      onEnterDemo: _enterDemo,
    );

    return AnimatedWaterBackdrop(
      showWaterField: true,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: wide ? NereusTokens.spaceXl : NereusTokens.spaceMd,
                vertical: NereusTokens.spaceLg,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: wide ? 1140 : 400),
                child: wide
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 12,
                            child: _SmartHydroDeskPitch(
                              busy: _busy,
                              onOpenDemoModule: _enterDemo,
                            ),
                          ),
                          const SizedBox(width: 44),
                          Expanded(
                            flex: 9,
                            child: Center(
                              child: ConstrainedBox(
                                constraints: const BoxConstraints(maxWidth: 380),
                                child: loginStage,
                              ),
                            ),
                          ),
                        ],
                      )
                    : loginStage,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
