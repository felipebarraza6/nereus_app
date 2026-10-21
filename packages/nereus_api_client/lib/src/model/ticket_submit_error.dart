//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_submit_error.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketSubmitError {
  /// Returns a new [TicketSubmitError] instance.
  TicketSubmitError({

    required  this.error,
  });

  @JsonKey(
    
    name: r'error',
    required: true,
    includeIfNull: false,
  )


  final String error;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TicketSubmitError &&
      other.error == error;

    @override
    int get hashCode =>
        error.hashCode;

  factory TicketSubmitError.fromJson(Map<String, dynamic> json) => _$TicketSubmitErrorFromJson(json);

  Map<String, dynamic> toJson() => _$TicketSubmitErrorToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

