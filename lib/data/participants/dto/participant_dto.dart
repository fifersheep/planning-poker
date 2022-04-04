import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant_dto.freezed.dart';
part 'participant_dto.g.dart';

@freezed
class ParticipantDto with _$ParticipantDto {
  const factory ParticipantDto({
    required String name,
    required int? vote,
  }) = _ParticipantDto;

  factory ParticipantDto.fromJson(Map<String, dynamic> json) => _$ParticipantDtoFromJson(json);
}
