import 'package:shared_preferences/shared_preferences.dart';

class Persistence {
  static Persistence? _instance;

  Persistence._();

  factory Persistence() {
    if (_instance == null) {
      _instance = Persistence._();
    }
    return _instance!;
  }

  Future<int?> loadParticipantId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('participantId');
  }

  Future<bool> setParticipant(int participantId) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setInt('participantId', participantId);
  }

  Future<bool> clearParticipant() async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.remove('participantId');
  }
}
