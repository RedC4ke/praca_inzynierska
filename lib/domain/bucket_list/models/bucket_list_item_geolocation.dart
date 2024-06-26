import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bucket_list_item_geolocation.g.dart';

@JsonSerializable(explicitToJson: true)
class BucketListItemGeolocation with EquatableMixin {
  BucketListItemGeolocation({
    required this.name,
    required this.placeId,
  });

  factory BucketListItemGeolocation.fromJson(Map<String, dynamic> json) =>
      _$BucketListItemGeolocationFromJson(json);

  final String name;
  final String placeId;

  Map<String, dynamic> toJson() => _$BucketListItemGeolocationToJson(this);

  @override
  List<Object?> get props => [name, placeId];
}
