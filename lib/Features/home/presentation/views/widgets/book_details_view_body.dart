import 'package:bookly_app/Features/home/presentation/views/widgets/book_detail_section.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_section.dart';

import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetailsSection(),
              Expanded(
                  child: SizedBox(
                    height: 60.0,),
              ),
              SimilarBooksSection(),
            ],
          ),
        ),
      ],
    );
  }
}










