import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class EventImage extends StatelessWidget {
  const EventImage({required this.eventUrl, this.size = 100, super.key});

  final String eventUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: eventUrl,
      width: size,
      placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) {
        debugPrint(error.toString());
        return FlutterLogo(
          size: size,
        );
      },
    );
  }
}
