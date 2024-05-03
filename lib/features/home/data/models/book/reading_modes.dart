import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'reading_modes.g.dart';
@JsonSerializable()
class ReadingModes extends Equatable {
  final bool? text;
  final bool? image;

  const ReadingModes({this.text, this.image});
  factory ReadingModes.fromJson(Map<String, dynamic> json) => _$ReadingModesFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ReadingModesToJson(this);
  @override
  List<Object?> get props => [text, image];
}
