import 'package:flutter/foundation.dart';
import 'package:supabase/supabase.dart';

extension SupabaseClientExtensions on SupabaseClient {
  static final instance = SupabaseClient(
    const String.fromEnvironment(kDebugMode ? 'SUPABASE_DEV_URL' : 'SUPABASE_URL'),
    const String.fromEnvironment(kDebugMode ? 'SUPABASE_DEV_PUB_KEY' : 'SUPABASE_PUB_KEY'),
  );
}
