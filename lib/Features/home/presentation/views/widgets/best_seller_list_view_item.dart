import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                image:  const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsData.test,
                  ),
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(width: 30,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Harry Potterand the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle22.copyWith(
                        fontFamily: kGtSectraFine
                    ),
                  ),
                ),
                const SizedBox(height: 3,),
                Text(
                  'J.K. Rowling',
                  style: Styles.textStyle16.copyWith(
                      color: Colors.grey
                  ),
                ),
                const SizedBox(height: 3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.textStyle22.copyWith(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


