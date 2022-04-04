import 'package:flutter/widgets.dart';
import 'package:planning_poker/button.dart';
import 'package:planning_poker/participation_vote.dart';
import 'main.dart';

class PresentationPage extends StatefulWidget {
  const PresentationPage({Key? key}) : super(key: key);

  @override
  State<PresentationPage> createState() => _PresentationPageState();
}

class _PresentationPageState extends State<PresentationPage> {
  final subscription = SupabaseClientExtensions.instance.from('participants').stream(['id']).order('name').execute();

  bool _show = false;

  Future<void> _clearParticipantVotes() async {
    await SupabaseClientExtensions.instance
        .from('participants')
        .update({
          'vote': null,
        })
        .eq('planning_session_id', 1)
        .execute();
  }

  @override
  Widget build(BuildContext context) => Center(
        child: StreamBuilder(
            stream: subscription,
            builder: (
              BuildContext context,
              AsyncSnapshot<List<Map<String, dynamic>>> snapshot,
            ) {
              if (!snapshot.hasData || snapshot.hasError || snapshot.data!.isEmpty) {
                return Container();
              }

              final participants = snapshot.data!.where((data) => data['vote'] != null).map((data) {
                return ParticipationVote(
                  label: "${data['name']}",
                  vote: _show ? data['vote'] : null,
                );
              }).toList();

              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    participants.isEmpty
                        ? Text("Waiting for votes...")
                        : _show
                            ? Button("Clear", () {
                                _clearParticipantVotes();
                                setState(() {
                                  _show = false;
                                });
                              })
                            : Button("Show Votes", () {
                                setState(() {
                                  _show = true;
                                });
                              }),
                    ...participants,
                  ],
                ),
              );
            }),
      );
}
