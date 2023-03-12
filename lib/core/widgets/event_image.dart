import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class EventImage extends StatelessWidget {
  const EventImage({required this.imgUrl, this.size = 100, super.key});

  final String imgUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imgUrl,
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
