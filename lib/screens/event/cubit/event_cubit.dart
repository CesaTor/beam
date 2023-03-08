import 'package:beam/core/models/db/event.dart';
import 'package:bloc/bloc.dart';

class EventCubit extends Cubit<Event> {
  EventCubit(this.event) : super(event);

  Event event;
}
