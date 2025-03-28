import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              const SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.28),
                child: const CustomBookImage(),
              ),
              const SizedBox(height: 20,),
              const Text(
                'The Jungle Book',
                style: Styles.textStyle30,
              ),
              const SizedBox(height: 5,),
              Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  color: Colors.white.withValues( alpha: 0.7 ),
                ),
              ),
              const SizedBox(height: 10,),
              const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(height: 40,),
              const BooksAction(),
              const Expanded(child: SizedBox(height: 60.0,)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    textAlign: TextAlign.center,
                    style: Styles.textStyle15.copyWith(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const SimilarBooksListView(),
              const SizedBox(height: 40,),
            ],
          ),
        ),
      ],
    );
  }
}






