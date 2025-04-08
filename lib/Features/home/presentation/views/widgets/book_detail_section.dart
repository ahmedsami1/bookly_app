import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        const SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.28),
          child:  CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 20),
         Text(
             book.volumeInfo.title!,
             maxLines: 2,
             textAlign: TextAlign.center,
             overflow: TextOverflow.ellipsis,
             style: Styles.textStyle30,
         ),
        const SizedBox(height: 5),
        Text(
          book.volumeInfo.authors?[0] ?? '',
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.white.withValues(alpha: 0.7),
          ),
        ),
        const SizedBox(height: 10),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
            rating: book.volumeInfo.averageRating ?? 0,
            count: book.volumeInfo.ratingCount ?? 0,
         ),
        const SizedBox(height: 40),
         BooksAction(bookModel: book,),
      ],
    );
  }
}
