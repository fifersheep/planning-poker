abstract class ParticipationState {
  ParticipationState._();

  factory ParticipationState.loading() => Loading._();
  factory ParticipationState.found(int participantId) =>
      ParticipantFound._(participantId);
  factory ParticipationState.notFound() => ParticipantNotFound._();
}

class Loading extends ParticipationState {
  Loading._() : super._();
}

class ParticipantFound extends ParticipationState {
  final int participantId;

  ParticipantFound._(this.participantId) : super._();
}

class ParticipantNotFound extends ParticipationState {
  ParticipantNotFound._() : super._();
}
