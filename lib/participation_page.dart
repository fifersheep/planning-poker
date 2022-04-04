import 'package:flutter/material.dart';
import 'package:planning_poker/participation.dart';
import 'package:planning_poker/participation_registration.dart';
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

  void _setParticipant(int participantId) async {
    final prefs = await SharedPreferences.getInstance();
    final success = await prefs.setInt('participantId', participantId);
    if (success) {
      setState(() {
        _state = ParticipationState.found(participantId);
      });
    }
  }

  void _clearParticipant() async {
    final prefs = await SharedPreferences.getInstance();
    final success = await prefs.remove('participantId');
    if (success) {
      setState(() {
        _state = ParticipationState.notFound();
      });
    }
  }

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
