import 'package:flutter/widgets.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class PresentationPage extends StatefulWidget {
  const PresentationPage({Key? key}) : super(key: key);

  @override
  State<PresentationPage> createState() => _PresentationPageState();
}

class _PresentationPageState extends State<PresentationPage> {
  final subscription = Supabase.instance.client
      .from('participants')
      .stream(['id'])
      .order('name')
      .execute();

  @override
  void dispose() {
    Supabase.instance.client.removeAllSubscriptions(); // ???
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Center(
        child: StreamBuilder(
            stream: subscription,
            builder: (
              BuildContext context,
              AsyncSnapshot<List<Map<String, dynamic>>> snapshot,
            ) {
              if (!snapshot.hasData ||
                  snapshot.hasError ||
                  snapshot.data!.isEmpty) {
                return Container();
              }

              final participants = snapshot.data!.map((data) {
                return Text("${data['name']} | ${data['vote']}");
              }).toList();

              return Column(
                children: participants,
              );
            }),
      );
}
