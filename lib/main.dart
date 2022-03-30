import 'package:flutter/widgets.dart';
import 'package:planning_poker/app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const url = String.fromEnvironment("SUPABASE_URL");
  const pubKey = String.fromEnvironment("SUPABASE_PUB_KEY");
  await Supabase.initialize(
    url: url,
    anonKey: pubKey,
  );

  runApp(App());
}
