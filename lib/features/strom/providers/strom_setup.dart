import 'package:flutter_riverpod/flutter_riverpod.dart';

class StromSetup {
  const StromSetup({required this.crews, required this.templates});

  final List<String> crews;
  final List<String> templates;

  StromSetup copyWith({List<String>? crews, List<String>? templates}) {
    return StromSetup(
      crews: crews ?? this.crews,
      templates: templates ?? this.templates,
    );
  }
}

class StromSetupController extends Notifier<StromSetup> {
  @override
  StromSetup build() {
    return const StromSetup(
      crews: ['Cuadrilla Sur'],
      templates: [
        'Medir caudal del pozo',
        'Revisar el tablero del pozo',
      ],
    );
  }

  void addCrew(String name) {
    final text = name.trim();
    if (text.isEmpty || state.crews.contains(text)) return;
    state = state.copyWith(crews: [...state.crews, text]);
  }

  void removeCrew(String name) {
    state = state.copyWith(
      crews: [for (final crew in state.crews) if (crew != name) crew],
    );
  }

  void removeTemplate(String name) {
    state = state.copyWith(
      templates: [for (final item in state.templates) if (item != name) item],
    );
  }

  void addTemplate(String name) {
    final text = name.trim();
    if (text.isEmpty || state.templates.contains(text)) return;
    state = state.copyWith(templates: [...state.templates, text]);
  }
}

final stromSetupProvider =
    NotifierProvider<StromSetupController, StromSetup>(StromSetupController.new);
