import 'package:flutter/material.dart';

class ShowFeedPage extends StatefulWidget {
  const ShowFeedPage({super.key});

  @override
  State<ShowFeedPage> createState() => _ShowFeedPageState();
}

class _ShowFeedPageState extends State<ShowFeedPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Show Feed'),
    );
  }
}
