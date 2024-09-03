import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.count});

  final MainAxisAlignment mainAxisAlignment;

  final int count;

  @override
  Widget build(BuildContext context) {
    String countStr = count.toString();
    String rating = '${countStr[0]}.${countStr[countStr.length - 1]}';
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 14,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating,
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text('($count)',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
              )),
        )
      ],
    );
  }
}
