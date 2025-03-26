import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 50.0, bottom: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo,scale: 3,),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.magnifyingGlass, size: 26.0),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}