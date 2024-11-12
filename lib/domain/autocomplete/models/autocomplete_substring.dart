import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'autocomplete_substring.g.dart';

@JsonSerializable()
class AutocompleteSubstring with EquatableMixin {
  AutocompleteSubstring({
    required this.length,
    required this.offset,
  });

  factory AutocompleteSubstring.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteSubstringFromJson(json);

  final int length;
  final int offset;

  @override
  List<Object?> get props => [length, offset];
}
