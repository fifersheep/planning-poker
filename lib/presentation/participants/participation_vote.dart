import 'package:flutter/widgets.dart';

class ParticipationVote extends StatelessWidget {
  final String label;
  final int? vote;

  const ParticipationVote({Key? key, required this.label, required this.vote}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String voteStr;
    switch (vote) {
      case 0:
        voteStr = "?";
        break;
      case null:
        voteStr = "-";
        break;
      default:
        voteStr = vote.toString();
    }

    return Container(
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            voteStr,
            style: TextStyle(fontSize: 28),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              label,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
