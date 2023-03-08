import 'package:beam/core/mock.dart';
import 'package:beam/core/models/db/event.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class EventListCubit extends HydratedCubit<List<Event>> {
  EventListCubit() : super([]) {
    getEvents();
  }

  Future<void> getEvents() async {
    final newState = <Event>[
      Event(
        'id1',
        placeholderUrl,
        Timestamp.fromDate(DateTime(2023, 03, 06)),
        Timestamp.fromDate(DateTime(2023, 03, 06)),
        'Description desc desc Description desc desc Description desc desc',
        'Titolo evento importante',
        'Circolo Arci post',
      ),
      Event(
        'id2',
        placeholderUrl,
        Timestamp.fromDate(DateTime(2023, 03, 06)),
        Timestamp.fromDate(DateTime(2023, 03, 06)),
        'Description desc desc Description desc desc Description desc desc',
        'Titolo evento importante',
        'Circolo Arci post',
      ),
      Event(
        'id3',
        placeholderUrl,
        Timestamp.fromDate(DateTime(2023, 03, 06)),
        Timestamp.fromDate(DateTime(2023, 03, 06)),
        'Description desc desc Description desc desc Description desc desc',
        'Titolo evento importante',
        'Circolo Arci post',
      )
    ];

    // TODO(ct): try-catch
    // final db = FirebaseFirestore.instance;

    // await db.collection('events').get().then((event) {
    //   for (final doc in event.docs) {
    //     newState.add(Event.fromJson(doc.data()));
    //   }
    // });

    emit(newState);
  }

  void addEvent(Event event) {
    state.add(event);
    emit(state);
  }

  @override
  List<Event>? fromJson(Map<String, dynamic> json) {
    if (json['list'] is List) {
      final list = <Event>[];
      for (final event in json['list'] as List) {
        if (event is Map<String, dynamic>) list.add(Event.fromJson(event));
      }
      return list;
    }
    return null;
  }

  @override
  Map<String, dynamic>? toJson(List<Event> state) {
    return {
      'list': List.generate(state.length, (index) {
        return state.elementAt(index).toJson();
      }),
    };
  }
}
