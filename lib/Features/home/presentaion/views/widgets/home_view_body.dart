import 'package:bookly/Features/home/presentaion/views/widgets/newest_books_list_view.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/featured_books_list_view.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: kPadding,
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: kPadding,
                child: Text(
                  'Newest Books',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        SliverPadding(
          padding: kPadding,
          sliver: NewestBooksListView(),
        ),
      ],
    );
  }
}
