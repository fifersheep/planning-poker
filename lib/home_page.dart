import 'package:flutter/widgets.dart';
import 'package:planning_poker/button.dart';

class HomePage extends StatelessWidget {
  final void Function() onSignupTapped;

  HomePage({Key? key, required this.onSignupTapped}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
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
            Button("Present", () {}),
            Button("Participate", () {}),
          ],
        ),
      );
}
