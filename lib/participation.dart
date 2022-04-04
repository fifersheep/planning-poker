import 'package:flutter/widgets.dart';
import 'package:planning_poker/button.dart';
import 'package:planning_poker/participation_vote.dart';
import 'main.dart';

class Participant {
  final String name;
  final int? vote;

  Participant(this.name, this.vote);
}

class Participation extends StatefulWidget {
  final int participantId;
  final void Function() clearParticipant;

  const Participation(this.participantId, this.clearParticipant, {Key? key}) : super(key: key);

  @override
  State<Participation> createState() => _ParticipationState(participantId);
}

class _ParticipationState extends State<Participation> {
  final int participantId;

  late Stream<List<Map<String, dynamic>>> subscription;

  _ParticipationState(this.participantId);

  @override
  void initState() {
    subscription =
        SupabaseClientExtensions.instance.from('participants:id=eq.$participantId').stream(['id']).limit(1).execute();

    super.initState();
  }

  Future<void> _submitParticipantVote(int? vote) async {
    await SupabaseClientExtensions.instance
        .from('participants')
        .update({
          'vote': vote,
        })
        .eq('id', participantId)
        .execute();
  }

  @override
  Widget build(BuildContext context) => StreamBuilder(
      stream: subscription,
      builder: (
        BuildContext context,
        AsyncSnapshot<List<Map<String, dynamic>>> snapshot,
      ) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Text("Loading..."),
          );
        }

        if (snapshot.data!.isEmpty) {
          widget.clearParticipant();
          return Center(
            child: Text("Participant not available."),
          );
        }

        if (!snapshot.hasData || snapshot.hasError) {
          return Center(
            child: Text("Error"),
          );
        }

        final participant = snapshot.data!.map((data) {
          return Participant(data['name'], data['vote']);
        }).toList()[0];

        final voteOptions = [0, 1, 2, 3, 5, 8, 13].map((v) {
          final label = v == 0 ? "?" : "$v";
          return Button(label, () {
            _submitParticipantVote(v);
          }, emphasis: participant.vote == v);
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
