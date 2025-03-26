import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'autocomplete_match.g.dart';

@JsonSerializable()
class AutocompleteMatch with EquatableMixin {
  AutocompleteMatch({
    required this.endOffset,
    this.startOffset,
  });

  factory AutocompleteMatch.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteMatchFromJson(json);

  final int? startOffset;
  final int endOffset;

  Map<String, dynamic> toJson() => _$AutocompleteMatchToJson(this);

  @override
  List<Object?> get props => [endOffset, startOffset];
}
