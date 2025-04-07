import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.16,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return const CustomBookImage(
              imageUrl: 'https://play.google.com/books/publisher/content/images/frontcover/JcV3EAAAQBAJ?fife=w480-h690',
            );
          },
        ),
      ),
    );
  }
}
