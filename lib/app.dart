import 'package:flutter/widgets.dart';
import 'package:planning_poker/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Directionality(
        textDirection: TextDirection.ltr,
        child: HomePage(),
      );
}
