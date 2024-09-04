import 'package:bookly/Features/home/presentaion/views/widgets/skeletonizer/newest_books_skeleton_list.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: NewestBooksSkeletonizerList(),
        );
      },
    );
  }
}
