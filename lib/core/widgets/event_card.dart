import 'package:beam/core/models/db/event.dart';
import 'package:beam/core/widgets/ct/ct_card.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({required this.event, super.key});
  final Event event;

  @override
  Widget build(BuildContext context) {
    return CTCard(
      imgUrl: event.cover,
      title: event.title,
      subtitle: '${event.venue}\n${event.description}',
    );
  }
}
