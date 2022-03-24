import 'package:flutter/material.dart';
import 'package:planning_poker/home_page.dart';
import 'package:planning_poker/participation_page.dart';
import 'package:planning_poker/presentation_page.dart';
import 'package:planning_poker/routes.dart';

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  AppRoute appRoute = AppRoute.home;

  void setRoute(AppRoute appRoute) {
    setState(() {
      this.appRoute = appRoute;
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: _buildPage(),
        ),
      );

  Widget _buildPage() {
    switch (appRoute) {
      case AppRoute.presentation:
        return PresentationPage();
      case AppRoute.participation:
        return ParticipationPage();
      default:
        return _homePage();
    }
  }

  Widget _homePage() => HomePage(
        onPresentationTapped: () {
          setRoute(AppRoute.presentation);
        },
        onParticipationTapped: () {
          setRoute(AppRoute.participation);
        },
      );
}
