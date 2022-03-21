import 'package:flutter/widgets.dart';
import 'package:planning_poker/app.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // final supabase = await Supabase.initialize(
  //   url: 'https://vrryydwonwupwdbatvtk.supabase.co',
  //   anonKey:
  //       'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZycnl5ZHdvbnd1cHdkYmF0dnRrIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NDc5MDA2NTcsImV4cCI6MTk2MzQ3NjY1N30.6WMrzQxsWLZpRaAAxK3npcRirF6LOj-EPPO2pBaAMGo',
  // );

  runApp(App(
    onSignupTapped: () async {
      // await supabase.client.auth.signInWithProvider(
      //   Provider.google,
      //   options: AuthOptions(
      //     redirectTo: null,
      //   ),
      // );
    },
  ));
}
