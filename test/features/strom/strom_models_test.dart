import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/features/strom/domain/strom_models.dart';

void main() {
  test('visit notes keep specialty and crew apart from the body', () {
    final notes = composeVisitNotes(
      specialty: VisitSpecialty.electrica,
      crew: 'Cuadrilla Sur',
      body: 'Pozo 3',
    );
    expect(specialtyFromNotes(notes), VisitSpecialty.electrica);
    expect(lineValue(notes, 'CUADRILLA'), 'Cuadrilla Sur');
    expect(visitBody(notes), 'Pozo 3');
  });

  test('activity notes round-trip result and measurement', () {
    final notes = composeActivityNotes(
      result: ActivityResult.parcial,
      measurement: '12 l/s',
      observation: 'Falta energizar',
    );
    final parsed = parseActivityNotes(notes);
    expect(parsed.result, ActivityResult.parcial);
    expect(parsed.measurement, '12 l/s');
    expect(parsed.observation, 'Falta energizar');
  });

  test('a visit is executable only when every activity has a result', () {
    const pending = StromActivity(
      id: '1',
      workOrderId: 'ot',
      description: 'Prueba',
    );
    const done = StromActivity(
      id: '1',
      workOrderId: 'ot',
      description: 'Prueba',
      result: ActivityResult.noRealizada,
    );
    expect(canMarkVisitExecuted(const []), isFalse);
    expect(canMarkVisitExecuted(const [pending]), isFalse);
    expect(canMarkVisitExecuted(const [done]), isTrue);
  });

  test('technical decision stays in the diagnosis prefix', () {
    final diagnosis = composeDiagnosis(
      TechnicalDecision.correccion,
      'Repetir medición',
    );
    expect(decisionFromDiagnosis(diagnosis), TechnicalDecision.correccion);
  });
}
