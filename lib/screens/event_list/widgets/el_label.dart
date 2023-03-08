import 'package:flutter/material.dart';

class EventListLabel extends StatelessWidget {
  const EventListLabel({required this.label, super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      sliver: SliverToBoxAdapter(
        child: Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
