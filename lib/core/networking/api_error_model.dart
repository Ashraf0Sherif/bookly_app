import 'package:freezed_annotation/freezed_annotation.dart';

import 'errors.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  int? code;
  String? message;
  List<Errors>? errors;

  ApiErrorModel({this.code, this.message, this.errors});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
