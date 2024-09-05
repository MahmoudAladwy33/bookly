import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/utils/functions/launch_url.dart';
import 'package:bookly/core/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: Custombutton(
              text: 'free',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: Custombutton(
              onPressed: () async {
                launchCustomurl(context, bookModel.volumeInfo.previewLink);
              },
              fontsize: 16,
              text: getText(bookModel),
              backgroundColor: const Color(0xffef8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Free preview';
    }
  }
}
