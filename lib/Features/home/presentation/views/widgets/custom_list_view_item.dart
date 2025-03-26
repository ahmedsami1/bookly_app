import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.4,
        margin: const EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
          color: Colors.amberAccent,
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
