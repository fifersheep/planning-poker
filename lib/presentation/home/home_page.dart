import 'package:flutter/widgets.dart';
import 'package:planning_poker/presentation/common/button.dart';

class HomePage extends StatelessWidget {
  final void Function() onPresentationTapped;
  final void Function() onParticipationTapped;

  HomePage({
    Key? key,
    required this.onPresentationTapped,
    required this.onParticipationTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Choose one",
                style: TextStyle(
                  fontSize: 36,
                ),
              ),
            ),
            Button("Present", onPresentationTapped),
            Button("Participate", onParticipationTapped),
          ],
        ),
      );
}
