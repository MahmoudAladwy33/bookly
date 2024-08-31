import 'package:bookly/Features/home/presentaion/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/featured_books_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: FeaturedBooksListView(),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
        ),
        BestSellerListViewItem(),
      ],
    );
  }
}
