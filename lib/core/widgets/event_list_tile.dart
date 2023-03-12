import 'package:auto_route/auto_route.dart';
import 'package:beam/core/models/db/event.dart';
import 'package:beam/core/routes/app_router.gr.dart';
import 'package:beam/core/widgets/event_image.dart';
import 'package:flutter/material.dart';

class EventListTile extends StatelessWidget {
  const EventListTile({required this.event, super.key});
  final Event event;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          AutoRouter.of(context).push(
            EventRoute(eventId: event.id),
            // '/event/${event.id}',
            onFailure: (failure) => debugPrint(failure.toString()),
          );
        },
        contentPadding: EdgeInsets.zero,
        leading: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
          child: EventImage(imgUrl: event.cover),
        ),
        title: Text(
          event.title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
        subtitle: Text(
          event.description,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 10,
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
          ],
        ),
      ),
    );
  }
}
