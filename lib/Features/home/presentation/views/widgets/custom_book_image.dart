import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
            errorWidget: (context, url, error) => const Icon(Icons.error_outline_outlined),
            placeholder: (context, url) => const CustomLoadingIndicator(),

          ),
        ),
      ),
    );
  }
}
