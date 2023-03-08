import 'package:beam/core/models/db/event.dart';
import 'package:beam/core/widgets/ct/ct_h_slider.dart';
import 'package:beam/core/widgets/event_hero.dart';
import 'package:flutter/material.dart';

class EventListFeatured extends StatelessWidget {
  const EventListFeatured({required this.events, super.key});
  final List<Event> events;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CTHorizontalSlider(
        height: 140,
        visibleItems: 1.5,
        children: List.generate(
          events.length,
          (index) => EventHero(
            event: events.elementAt(index),
            cta: () {},
          ),
        ),
      ),
    );
  }
}
