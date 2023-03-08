import 'package:auto_route/auto_route.dart';
import 'package:beam/core/cubit/event_list_cubit.dart';
import 'package:beam/core/widgets/event_image.dart';
import 'package:beam/screens/event/cubit/event_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventPage extends StatelessWidget {
  const EventPage({@PathParam('id') required this.eventId, super.key});

  final String eventId;

  @override
  Widget build(BuildContext context) {
    final event = context.select(
      (EventListCubit value) =>
          value.state.where((element) => element.id == eventId).first,
    );

    return BlocProvider(
      create: (context) => EventCubit(event),
      child: const EventView(),
    );
  }
}

class EventView extends StatelessWidget {
  const EventView({super.key});

  @override
  Widget build(BuildContext context) {
    final event = context.select((EventCubit value) => value.state);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          EventImage(
            eventUrl: event.cover,
            size: 200,
          ),
          Text(event.title),
          Text(event.description),
          Text('Starts at: ${event.dateStart.toDate()}'),
          Text('Ends at: ${event.dateEnd.toDate()}'),
        ],
      ),
    );
  }
}
