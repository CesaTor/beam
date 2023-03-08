import 'package:beam/core/cubit/event_list_cubit.dart';
import 'package:beam/core/models/db/event.dart';
import 'package:beam/screens/event_list/widgets/el_appbar.dart';
import 'package:beam/screens/event_list/widgets/el_featured.dart';
import 'package:beam/screens/event_list/widgets/el_label.dart';
import 'package:beam/screens/event_list/widgets/el_tags.dart';
import 'package:beam/screens/event_list/widgets/el_trending.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventListPage extends StatelessWidget {
  const EventListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventListCubit, List<Event>>(
      builder: (context, state) {
        return EventListView(
          events: state,
        );
      },
    );
  }
}

class EventListView extends StatelessWidget {
  const EventListView({required this.events, super.key});
  final List<Event> events;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const EventListAppBar(),
          const EventListLabel(label: 'Featured'),
          EventListFeatured(events: events),
          const EventListLabel(label: 'Trending'),
          EventListTags(events: events),
          EventListTrending(events: events),
        ],
      ),
    );
  }
}
