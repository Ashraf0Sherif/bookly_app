import 'package:bookly_app/core/functions/launch_url.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../data/models/book/book.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: "Free",
              textColor: Colors.black,
              backgroundColor: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: CustomButton(
              fontSize: 16,
              text: (book.volumeInfo.previewLink != null
                  ? "Preview"
                  : "Not Available"),
              textColor: Colors.white,
              backgroundColor: const Color(0xffEF8262),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              onPressed: () async {
                launchCustomUrl(context, url: book.volumeInfo.previewLink!);
              },
            ),
          ),
        ],
      ),
    );
  }
}
