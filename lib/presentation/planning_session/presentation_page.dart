import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:planning_poker/presentation/common/button.dart';
import 'package:planning_poker/data/participants/dto/participant_dto.dart';
import 'package:planning_poker/data/participants/participants_repository.dart';
import 'package:planning_poker/presentation/participants/participation_vote.dart';
import 'package:planning_poker/presentation/planning_session/participant_vote_model.dart';

class PresentationPage extends StatefulWidget {
  const PresentationPage({Key? key}) : super(key: key);

  @override
  State<PresentationPage> createState() => _PresentationPageState();
}

class _PresentationPageState extends State<PresentationPage> {
  final subscription = ParticipantsRepository().planningSessionParticipants(1);

  bool _show = false;

  Future<void> _clearParticipantVotes() async => ParticipantsRepository().clearParticipantVotes(1);

  Widget _grid(Iterable<ParticipantVoteModel> votedParticipants) {
    final participants = groupBy<ParticipantVoteModel, String>(votedParticipants, (p) => p.vote)
        .entries
        .map((entry) => Container(
              constraints: BoxConstraints.expand(),
              child: ParticipationVote(
                label: entry.key == 1 ? '${entry.key} Point' : '${entry.key} Points',
                vote: entry.value.length,
              ),
            ))
        .toList();

    return LayoutBuilder(
      builder: (_, constraints) {
        final colCount = constraints.maxWidth > 500 ? 4 : 2;
        final rowSize = List.generate((participants.length / colCount).ceil(), (_) => auto);
        final colSize = List.generate(colCount, (_) => 1.fr);
        return LayoutGrid(
          columnSizes: colSize,
          rowSizes: rowSize,
          children: participants,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) => Center(
        child: StreamBuilder(
            stream: subscription,
            builder: (
              BuildContext context,
              AsyncSnapshot<List<ParticipantDto>> snapshot,
            ) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Text("Loading..."),
                );
              }
              if (!snapshot.hasData || snapshot.hasError || snapshot.data!.isEmpty) {
                return Container();
              }

              final votedParticipants = snapshot.data!
                  .where((data) => data.vote != null)
                  .map((data) => ParticipantVoteModel(name: data.name, vote: data.vote.toString()));

              return Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  constraints: BoxConstraints(
                    maxWidth: 800,
                  ),
                  child: votedParticipants.isEmpty
                      ? Text("Waiting for votes...")
                      : Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _show
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
                            _show
                                ? _grid(votedParticipants)
                                : ParticipationVote(
                                    label: 'Votes',
                                    vote: votedParticipants.length,
                                  )
                          ],
                        ),
                ),
              );
            }),
      );
}
