import 'package:flutter/widgets.dart';
import 'package:planning_poker/home_page.dart';

class App extends StatelessWidget {
  final void Function() onSignupTapped;

  const App({
    required this.onSignupTapped,
  });

  @override
  Widget build(BuildContext context) => Directionality(
        textDirection: TextDirection.ltr,
        child: HomePage(onSignupTapped: onSignupTapped),
      );
}
