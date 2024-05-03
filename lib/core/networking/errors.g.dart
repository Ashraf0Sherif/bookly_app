// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Errors _$ErrorsFromJson(Map<String, dynamic> json) => Errors(
      message: json['message'] as String?,
      domain: json['domain'] as String?,
      reason: json['reason'] as String?,
      location: json['location'] as String?,
      locationType: json['locationType'] as String?,
    );

Map<String, dynamic> _$ErrorsToJson(Errors instance) => <String, dynamic>{
      'message': instance.message,
      'domain': instance.domain,
      'reason': instance.reason,
      'location': instance.location,
      'locationType': instance.locationType,
    };
