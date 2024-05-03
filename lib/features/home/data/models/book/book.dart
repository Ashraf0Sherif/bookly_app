import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';
part 'book.g.dart';
@JsonSerializable()
class Book extends Equatable {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  const Book({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });
  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  Map<String, dynamic> toJson() => _$BookToJson(this);
  @override
  List<Object?> get props {
    return [
      kind,
      id,
      etag,
      selfLink,
      volumeInfo,
      saleInfo,
      accessInfo,
      searchInfo,
    ];
  }
}
