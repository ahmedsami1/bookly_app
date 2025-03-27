import 'package:bookly_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 40,),
          Padding(
            padding: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding,),
            child: Text(
              'Best Seller',
              style: Styles.textStyle20,
            ),
          ),
          SizedBox(height: 20,),
          BestSellerListViewItem(),
        ]
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      margin: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding,),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 3 / 4,
            child: Container(
              margin: const EdgeInsets.only(right: 10.0,),
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
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'The Jungle Book',
                style: Styles.textStyle22.copyWith(
                    fontFamily: kGtSectraFine
                ),
              ),
              const SizedBox(height: 10,),
               Text(
                'Rudyard Kipling',
                style: Styles.textStyle16.copyWith(
                  color: Colors.grey
                ),
              ),
              const SizedBox(height: 10,),
               Row(
                children: [
                   Text(
                    '19.99 €',
                    style: Styles.textStyle22.copyWith(
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  const SizedBox(width: 50,),
                  const Icon(Icons.star, color: Colors.amber,),
                  const Text(
                    ' 4.8',
                    style: Styles.textStyle16,
                  ),
                  const SizedBox(width: 10,),
                  Text(
                    '(2390)',
                    style: Styles.textStyle16.copyWith(
                      color: Colors.grey
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}






