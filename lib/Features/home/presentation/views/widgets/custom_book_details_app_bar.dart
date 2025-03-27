import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close, size: 28,)
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined,size: 28,)
          ),

        ],
      ),
    );
  }
}