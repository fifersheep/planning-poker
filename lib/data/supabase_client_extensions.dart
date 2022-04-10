import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase/supabase.dart';

extension SupabaseClientExtensions on SupabaseClient {
  static final instance = SupabaseClient(
    (kDebugMode ? dotenv.env['SUPABASE_DEV_URL'] : dotenv.env['SUPABASE_URL']) ?? '',
    (kDebugMode ? dotenv.env['SUPABASE_DEV_PUB_KEY'] : dotenv.env['SUPABASE_PUB_KEY']) ?? '',
  );
}
