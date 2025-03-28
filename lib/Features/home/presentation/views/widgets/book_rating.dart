import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,  this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 18,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(width: 5,),
        Text(
          ' 4.8',
          style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(width: 10,),
        Text(
          '(2390)',
          style: Styles.textStyle16.copyWith(
              color: Colors.white.withValues(alpha: 0.5),
          ),
        ),
      ],
    );
  }
}