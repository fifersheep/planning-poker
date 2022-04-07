import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant_vote_model.freezed.dart';

@freezed
class ParticipantVoteModel with _$ParticipantVoteModel {
  const factory ParticipantVoteModel({
    required String name,
    required String vote,
  }) = _ParticipantVoteModel;
}
