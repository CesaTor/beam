import 'package:beam/core/models/db/event.dart';
import 'package:flutter/material.dart';

class EventListTags extends StatelessWidget {
  const EventListTags({required this.events, super.key});
  final List<Event> events;

  @override
  Widget build(BuildContext context) {
    final tags = [
      'All',
      'Art',
      'Music',
      'Food',
      'Sing',
      'Trivial',
      'Chill',
    ];

    return SliverToBoxAdapter(
      child: SizedBox(
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tags.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Chip(
              label: Text(
                tags.elementAt(index),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
