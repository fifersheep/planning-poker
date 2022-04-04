import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase/supabase.dart';

extension SupabaseClientExtensions on SupabaseClient {
  static final instance = SupabaseClient(
    dotenv.env['SUPABASE_URL'] ?? '',
    dotenv.env['SUPABASE_PUB_KEY'] ?? '',
  );
}
