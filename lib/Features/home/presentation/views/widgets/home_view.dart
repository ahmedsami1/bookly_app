import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(AssetsData.logo, scale: 2.0,),
      ),
    );
  }
}
