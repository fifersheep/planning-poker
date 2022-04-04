import 'package:planning_poker/data/participants/dto/participant_dto.dart';
import 'package:planning_poker/data/supabase_client_extensions.dart';

class ParticipantsRepository {
  static ParticipantsRepository? _instance;

  ParticipantsRepository._();

  factory ParticipantsRepository() {
    if (_instance == null) {
      _instance = ParticipantsRepository._();
    }
    return _instance!;
  }

  Stream<List<ParticipantDto>> planningSessionParticipants(int planningSessionId) => SupabaseClientExtensions.instance
      .from('participants:planning_session_id=eq.$planningSessionId')
      .stream(['id'])
      .order('name')
      .execute()
      .asyncMap((data) => data.map((item) => ParticipantDto.fromJson(item)).toList());

  Stream<ParticipantDto?> participant(int participantId) => SupabaseClientExtensions.instance
      .from('participants:id=eq.$participantId')
      .stream(['id'])
      .limit(1)
      .execute()
      .asyncMap((data) => data.isNotEmpty ? data.map((item) => ParticipantDto.fromJson(item)).toList()[0] : null);

  Future<int?> submitParticipant(String name, int planningSessionId) async {
    final res = await SupabaseClientExtensions.instance.from('participants').insert({
      'name': name,
      'planning_session_id': planningSessionId,
    }).execute();

    return res.data[0]['id'] as int?;
  }

  Future<void> submitParticipantVote(int participantId, int? vote) async {
    await SupabaseClientExtensions.instance
        .from('participants')
        .update({
          'vote': vote,
        })
        .eq('id', participantId)
        .execute();
  }

  Future<void> clearParticipantVotes(int planningSessionId) async {
    await SupabaseClientExtensions.instance
        .from('participants')
        .update({
          'vote': null,
        })
        .eq('planning_session_id', planningSessionId)
        .execute();
  }
}
