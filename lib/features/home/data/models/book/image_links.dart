import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_links.g.dart';

@JsonSerializable()
class ImageLinks extends Equatable {
  final String? smallThumbnail;
  final String? thumbnail;

  const ImageLinks({this.smallThumbnail, this.thumbnail});
  factory ImageLinks.fromJson(Map<String, dynamic> json) => _$ImageLinksFromJson(json);

  Map<String, dynamic> toJson() => _$ImageLinksToJson(this);
  @override
  List<Object?> get props => [smallThumbnail, thumbnail];
}
