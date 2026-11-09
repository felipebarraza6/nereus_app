import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/features/crm/domain/crm_models.dart';

void main() {
  test('opportunity parses list payload and money', () {
    final item = OpportunityItem.fromJson(const {
      'id': 'op-1',
      'title': 'Pozo Nahuen',
      'stage': 'stage-1',
      'stage_name': 'Propuesta',
      'client': 'cli-1',
      'client_name': 'Agrícola Nahuen',
      'estimated_value': '1500000.00',
      'weighted_value': '900000.00',
      'expected_close_date': '2026-11-02',
    });

    expect(item.stageId, 'stage-1');
    expect(item.clientName, 'Agrícola Nahuen');
    expect(item.estimatedValue, 1500000);
    expect(clp(item.estimatedValue), r'$1.500.000');
  });

  test('lead can convert only after contact or qualification', () {
    final fresh = LeadItem.fromJson(const {
      'id': 'l1',
      'first_name': 'Ana',
      'last_name': 'Soto',
      'status': 'NEW',
      'company': 'Fundo El Boldo',
    });
    final ready = LeadItem.fromJson(const {
      'id': 'l2',
      'first_name': 'Ana',
      'status': 'QUALIFIED',
    });
    expect(fresh.name, 'Ana Soto');
    expect(fresh.canConvert, isFalse);
    expect(ready.canConvert, isTrue);
    expect(leadStatusLabel('CONTACTED'), 'Contactado');
  });

  test('proposal falls back to notes when there is no product', () {
    final item = ProposalItem.fromJson(const {
      'id': 'p-1',
      'quantity': '2',
      'unit_price': '1000',
      'notes': 'Visita de terreno',
    });
    expect(item.label, 'Visita de terreno');
  });
}
