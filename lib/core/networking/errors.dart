import 'package:json_annotation/json_annotation.dart';

part 'errors.g.dart';

@JsonSerializable()
class Errors {
  String? message;
  String? domain;
  String? reason;
  String? location;
  String? locationType;

  Errors(
      {this.message,
      this.domain,
      this.reason,
      this.location,
      this.locationType});

  factory Errors.fromJson(Map<String, dynamic> json) => _$ErrorsFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorsToJson(this);
}
