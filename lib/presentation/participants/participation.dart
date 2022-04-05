import 'package:flutter/widgets.dart';
import 'package:planning_poker/presentation/common/button.dart';
import 'package:planning_poker/data/participants/dto/participant_dto.dart';
import 'package:planning_poker/data/participants/participants_repository.dart';
import 'package:planning_poker/presentation/participants/participation_vote.dart';

class Participation extends StatefulWidget {
  final int participantId;
  final void Function() clearParticipant;

  const Participation(this.participantId, this.clearParticipant, {Key? key}) : super(key: key);

  @override
  State<Participation> createState() => _ParticipationState(participantId);
}

class _ParticipationState extends State<Participation> {
  final int participantId;

  late Stream<ParticipantDto?> subscription;

  _ParticipationState(this.participantId);

  @override
  void initState() {
    subscription = ParticipantsRepository().participant(participantId);
    super.initState();
  }

  Future<void> _submitParticipantVote(int? vote) async =>
      ParticipantsRepository().submitParticipantVote(participantId, vote);

  @override
  Widget build(BuildContext context) => StreamBuilder(
      stream: subscription,
      builder: (
        BuildContext context,
        AsyncSnapshot<ParticipantDto?> snapshot,
      ) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Text("Loading..."),
          );
        }

        if (!snapshot.hasData || snapshot.hasError) {
          return Center(
            child: Text("Error"),
          );
        }

        final participant = snapshot.data;
        if (participant == null) {
          widget.clearParticipant();
          return Center(
            child: Text("Participant not available."),
          );
        }

        final voteOptions = [0, 1, 2, 3, 5, 8, 13].map((v) {
          final label = v == 0 ? "?" : "$v";
          return Button(label, () {
            _submitParticipantVote(v);
          }, emphasis: snapshot.data?.vote == v);
        }).toList();

        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ParticipationVote(
                label: participant.name,
                vote: participant.vote,
              ),
              ...voteOptions,
              Button("Clear", () {
                _submitParticipantVote(null);
              }),
            ],
          ),
        );
      });
}
