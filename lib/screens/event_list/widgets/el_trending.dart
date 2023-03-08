import 'package:auto_route/auto_route.dart';
import 'package:beam/core/models/db/event.dart';
import 'package:beam/core/routes/app_router.gr.dart';
import 'package:beam/core/widgets/event_card.dart';
import 'package:flutter/material.dart';

class EventListTrending extends StatelessWidget {
  const EventListTrending({required this.events, super.key});
  final List<Event> events;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: const EdgeInsets.all(8),
          child: InkWell(
            onTap: () {
              context.router.push(
                EventRoute(eventId: events.elementAt(index).id),
              );
            },
            child: EventCard(
              event: events.elementAt(index),
            ),
          ),
        ),
        childCount: events.length,
      ),
    );
  }
}
