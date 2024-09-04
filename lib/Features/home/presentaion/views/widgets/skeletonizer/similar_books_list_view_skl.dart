import 'package:bookly/Features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SimilarBooksListViewSkl extends StatelessWidget {
  const SimilarBooksListViewSkl({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .15,
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(
                imageUrl:
                    'https://books.google.com/books/content?id=9GwrmHRl490C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
              ),
            );
          },
        ),
      ),
    );
  }
}
