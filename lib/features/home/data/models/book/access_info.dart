import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'epub.dart';
import 'pdf.dart';

part 'access_info.g.dart';

@JsonSerializable()
class AccessInfo extends Equatable {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final Epub? epub;
  final Pdf? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  const AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) =>
      _$AccessInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AccessInfoToJson(this);

  @override
  List<Object?> get props {
    return [
      country,
      viewability,
      embeddable,
      publicDomain,
      textToSpeechPermission,
      // epub,
      // pdf,
      webReaderLink,
      accessViewStatus,
      quoteSharingAllowed,
    ];
  }
}
