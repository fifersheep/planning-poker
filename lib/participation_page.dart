import 'package:flutter/material.dart';
import 'package:planning_poker/participation_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ParticipationPage extends StatefulWidget {
  const ParticipationPage({Key? key}) : super(key: key);

  @override
  State<ParticipationPage> createState() => _ParticipationPageState();
}

class _ParticipationPageState extends State<ParticipationPage> {
  ParticipationState _state = ParticipationState.loading();

  void _loadParticipantId() async {
    final prefs = await SharedPreferences.getInstance();

    final pId = prefs.getInt('participantId');
    final ParticipationState newState;
    if (pId != null) {
      newState = ParticipationState.found(pId);
    } else {
      newState = ParticipationState.notFound();
    }

    setState(() {
      _state = newState;
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = _state;
    if (state is Loading) {
      _loadParticipantId();
      return CircularProgressIndicator();
    } else if (state is ParticipantNotFound) {
      return Center(
        child: Text("Participant not found"),
      );
    } else if (state is ParticipantFound) {
      return Center(
        child: Text("Participant found: ${state.participantId}"),
      );
    } else {
      return Center(
        child: Text("Error"),
      );
    }
  }
}
