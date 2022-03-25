import 'package:flutter/widgets.dart';
import 'package:planning_poker/button.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Participant {
  final String name;
  final int? vote;

  Participant(this.name, this.vote);
}

class Participation extends StatefulWidget {
  final int participantId;

  const Participation(this.participantId, {Key? key}) : super(key: key);

  @override
  State<Participation> createState() => _ParticipationState(participantId);
}

class _ParticipationState extends State<Participation> {
  final int participantId;

  late Stream<List<Map<String, dynamic>>> subscription;

  _ParticipationState(this.participantId);

  @override
  void initState() {
    subscription = Supabase.instance.client
        .from('participants:id=eq.$participantId')
        .stream(['id'])
        .limit(1)
        .execute();

    super.initState();
  }

  @override
  void dispose() {
    Supabase.instance.client.removeAllSubscriptions(); // ???
    super.dispose();
  }

  Future<void> _submitParticipantVote(int? vote) async {
    await Supabase.instance.client
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

        if (!snapshot.hasData || snapshot.hasError || snapshot.data!.isEmpty) {
          return Center(
            child: Text("Error"),
          );
        }

        final participant = snapshot.data!.map((data) {
          return Participant(data['name'], data['vote']);
        }).toList()[0];

        final voteOptions = [1, 2, 3, 5, 8, 13]
            .map((v) => Button("$v", () {
                  _submitParticipantVote(v);
                }, emphasis: participant.vote == v))
            .toList();

        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("${participant.name} | ${participant.vote}"),
              ...voteOptions,
              Button("Clear", () {
                _submitParticipantVote(null);
              }),
            ],
          ),
        );
      });
}
