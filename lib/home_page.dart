import 'package:flutter/widgets.dart';
import 'package:planning_poker/button.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

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
