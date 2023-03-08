import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CTFullWidthImage extends StatelessWidget {
  const CTFullWidthImage({required this.imgUrl, super.key});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imgUrl,
      imageBuilder: (context, imageProvider) => Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
