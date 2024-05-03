import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'sale_info.g.dart';
@JsonSerializable()
class SaleInfo extends Equatable {
  final String? country;
  final String? saleability;
  final bool? isEbook;

  const SaleInfo({this.country, this.saleability, this.isEbook});
  factory SaleInfo.fromJson(Map<String, dynamic> json) => _$SaleInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SaleInfoToJson(this);
  @override
  List<Object?> get props => [country, saleability, isEbook];
}
