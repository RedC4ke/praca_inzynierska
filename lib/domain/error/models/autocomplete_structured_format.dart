import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:travelmate/domain/error/models/structured_text.dart';

part 'autocomplete_structured_format.g.dart';

@JsonSerializable()
class AutocompleteStructuredFormat with EquatableMixin {
  AutocompleteStructuredFormat({
    required this.mainText,
    this.secondaryText,
  });

  factory AutocompleteStructuredFormat.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteStructuredFormatFromJson(json);

  final StructuredText mainText;
  final StructuredText? secondaryText;

  Map<String, dynamic> toJson() => _$AutocompleteStructuredFormatToJson(this);

  @override
  List<Object?> get props => [
        mainText,
        secondaryText,
      ];
}
