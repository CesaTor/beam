import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventListAppBar extends StatelessWidget {
  const EventListAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      centerTitle: false,
      title: Text(
        'BEAM',
        style: GoogleFonts.dosis(letterSpacing: 8),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.bookmark),
          onPressed: () {},
        ),
      ],
      bottom: AppBar(
        title: const Card(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(10),
              suffixIcon: Icon(Icons.search),
              // suffixIcon: Icon(Icons.camera_alt),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
