import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        margin: const EdgeInsets.only(left: 12.0,),
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
