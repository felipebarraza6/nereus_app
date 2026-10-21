// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_submit_error.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TicketSubmitErrorCWProxy {
  TicketSubmitError error(String error);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketSubmitError(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketSubmitError(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketSubmitError call({String error});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTicketSubmitError.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTicketSubmitError.copyWith.fieldName(...)`
class _$TicketSubmitErrorCWProxyImpl implements _$TicketSubmitErrorCWProxy {
  const _$TicketSubmitErrorCWProxyImpl(this._value);

  final TicketSubmitError _value;

  @override
  TicketSubmitError error(String error) => this(error: error);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketSubmitError(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketSubmitError(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketSubmitError call({Object? error = const $CopyWithPlaceholder()}) {
    return TicketSubmitError(
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String,
    );
  }
}

extension $TicketSubmitErrorCopyWith on TicketSubmitError {
  /// Returns a callable class that can be used as follows: `instanceOfTicketSubmitError.copyWith(...)` or like so:`instanceOfTicketSubmitError.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TicketSubmitErrorCWProxy get copyWith =>
      _$TicketSubmitErrorCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketSubmitError _$TicketSubmitErrorFromJson(Map<String, dynamic> json) =>
    $checkedCreate('TicketSubmitError', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['error']);
      final val = TicketSubmitError(
        error: $checkedConvert('error', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$TicketSubmitErrorToJson(TicketSubmitError instance) =>
    <String, dynamic>{'error': instance.error};
