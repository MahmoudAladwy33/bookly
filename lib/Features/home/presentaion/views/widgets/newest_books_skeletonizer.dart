import 'package:bookly/Features/home/presentaion/views/widgets/newest_books_skeleton_list.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NewestBooksSkeletonizer extends StatelessWidget {
  const NewestBooksSkeletonizer({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: NewestBooksSkeletonizerList(),
          );
        },
      ),
    );
  }
}
