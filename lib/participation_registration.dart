import 'package:flutter/material.dart';
import 'package:planning_poker/button.dart';
import 'main.dart';

class ParticipationRegistration extends StatefulWidget {
  final void Function(int participantId) setParticipantId;

  ParticipationRegistration(this.setParticipantId, {Key? key}) : super(key: key);

  @override
  State<ParticipationRegistration> createState() => _ParticipationRegistrationState();
}

class _ParticipationRegistrationState extends State<ParticipationRegistration> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<int?> _submitParticipant(String name) async {
    final res = await SupabaseClientExtensions.instance.from('participants').insert({
      'name': name,
      'planning_session_id': 1,
    }).execute();

    return res.data[0]['id'] as int?;
  }

  @override
  Widget build(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            constraints: BoxConstraints(maxWidth: 500),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your name",
                  ),
                  controller: _controller,
                ),
                Button("Submit", () async {
                  final id = await _submitParticipant(_controller.text);
                  if (id != null) {
                    widget.setParticipantId(id);
                  }
                })
              ],
            ),
          ),
        ),
      );
}
