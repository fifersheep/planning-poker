import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:planning_poker/app.dart';
import 'package:supabase/supabase.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load();

  runApp(App());
}

extension SupabaseClientExtensions on SupabaseClient {
  static final instance = SupabaseClient(
    dotenv.env['SUPABASE_URL'] ?? '',
    dotenv.env['SUPABASE_PUB_KEY'] ?? '',
  );
}
