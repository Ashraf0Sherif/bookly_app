import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'industry_identifier.g.dart';
@JsonSerializable()
class IndustryIdentifier extends Equatable {
  final String? type;
  final String? identifier;

  const IndustryIdentifier({this.type, this.identifier});
  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) => _$IndustryIdentifierFromJson(json);

  Map<String, dynamic> toJson() => _$IndustryIdentifierToJson(this);
  @override
  List<Object?> get props => [type, identifier];
}
