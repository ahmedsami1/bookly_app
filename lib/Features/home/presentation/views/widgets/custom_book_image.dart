import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.4 / 3.7,
      child: Container(
        margin: const EdgeInsets.only(right: 10.0,),
        decoration: BoxDecoration(
          image:  const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AssetsData.test,
            ),
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
