import 'package:flutter/material.dart';
import 'package:planning_poker/data/persistence.dart';
import 'package:planning_poker/presentation/participants/participation.dart';
import 'package:planning_poker/presentation/participants/participation_registration.dart';
import 'package:planning_poker/presentation/participants/participation_state.dart';

class ParticipationPage extends StatefulWidget {
  const ParticipationPage({Key? key}) : super(key: key);

  @override
  State<ParticipationPage> createState() => _ParticipationPageState();
}

class _ParticipationPageState extends State<ParticipationPage> {
  ParticipationState _state = ParticipationState.loading();

  void _loadParticipantId() {
    Persistence().loadParticipantId().then((pId) {
      _setState(pId != null ? ParticipationState.found(pId) : ParticipationState.notFound());
    });
  }

  void _setParticipant(int participantId) async {
    final success = await Persistence().setParticipant(participantId);
    if (success) _setState(ParticipationState.found(participantId));
  }

  void _clearParticipant() async {
    final success = await Persistence().clearParticipant();
    if (success) _setState(ParticipationState.notFound());
  }

  void _setState(ParticipationState state) => setState(() {
        _state = state;
      });

  @override
  Widget build(BuildContext context) {
    final state = _state;
    if (state is Loading) {
      _loadParticipantId();
      return CircularProgressIndicator();
    } else if (state is ParticipantNotFound) {
      return ParticipationRegistration(_setParticipant);
    } else if (state is ParticipantFound) {
      return Participation(state.participantId, _clearParticipant);
    } else {
      return Center(
        child: Text("Error"),
      );
    }
  }
}
