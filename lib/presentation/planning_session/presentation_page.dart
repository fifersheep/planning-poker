import 'package:flutter/widgets.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:planning_poker/presentation/common/button.dart';
import 'package:planning_poker/data/participants/dto/participant_dto.dart';
import 'package:planning_poker/data/participants/participants_repository.dart';
import 'package:planning_poker/presentation/participants/participation_vote.dart';

class PresentationPage extends StatefulWidget {
  const PresentationPage({Key? key}) : super(key: key);

  @override
  State<PresentationPage> createState() => _PresentationPageState();
}

class _PresentationPageState extends State<PresentationPage> {
  final subscription = ParticipantsRepository().planningSessionParticipants(1);

  bool _show = false;

  Future<void> _clearParticipantVotes() async => ParticipantsRepository().clearParticipantVotes(1);

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

              final participants = snapshot.data!.where((data) => data.vote != null).map((data) {
                return Container(
                  constraints: BoxConstraints.expand(),
                  child: ParticipationVote(
                    label: data.name,
                    vote: _show ? data.vote : null,
                  ),
                );
              }).toList();

              return Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  constraints: BoxConstraints(
                    maxWidth: 800,
                  ),
                  child: participants.isEmpty
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
                            LayoutBuilder(
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
                            )
                          ],
                        ),
                ),
              );
            }),
      );
}
