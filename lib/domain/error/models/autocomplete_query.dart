import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'autocomplete_query.g.dart';

@JsonSerializable()
class AutocompleteQuery with EquatableMixin {
  AutocompleteQuery({
    required this.input,
    required this.languageCode,
    required this.sessionToken,
    this.includePureServiceAreaBusinesses = false,
  });

  factory AutocompleteQuery.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteQueryFromJson(json);

  final String input;
  final bool includePureServiceAreaBusinesses;
  final String languageCode;
  final String sessionToken;

  Map<String, dynamic> toJson() => _$AutocompleteQueryToJson(this);

  @override
  List<Object?> get props => [
        input,
        includePureServiceAreaBusinesses,
        languageCode,
        sessionToken,
      ];
}
