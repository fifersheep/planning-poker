import 'package:flutter/widgets.dart';
import 'package:planning_poker/app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://xjbpbchuunkoucygvrhs.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhqYnBiY2h1dW5rb3VjeWd2cmhzIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NDc5OTI1MDMsImV4cCI6MTk2MzU2ODUwM30.lBWuEeEI_fOJ4p58ecved3unq5NvUzgpsnZ2OcHUSfo',
  );

  runApp(App());
}
