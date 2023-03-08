import 'package:beam/core/models/db/event.dart';
import 'package:beam/core/widgets/ct/ct_hero.dart';
import 'package:flutter/material.dart';

class EventHero extends StatelessWidget {
  const EventHero({required this.event, this.cta, this.ctaLabel, super.key});

  final Event event;
  final String? ctaLabel;
  final void Function()? cta;

  @override
  Widget build(BuildContext context) {
    return CTHero(
      imgUrl: event.cover,
      title: event.title,
      subtitle: event.venue,
      cta: cta,
      ctaLabel: ctaLabel,
    );
  }
}
