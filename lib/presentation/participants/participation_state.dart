import 'package:freezed_annotation/freezed_annotation.dart';

part 'participation_state.freezed.dart';

@freezed
class ParticipationState with _$ParticipationState {
  const factory ParticipationState.loading() = Loading;
  const factory ParticipationState.found(int participantId) = ParticipantFound;
  const factory ParticipationState.notFound() = ParticipantNotFound;
}
