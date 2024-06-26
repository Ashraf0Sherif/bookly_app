import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/book/book.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.24),
          child: CustomBookItem(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? kNoCoverImage,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          '${book.volumeInfo.title}',
          style: Styles.kTextStyle30,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: book.volumeInfo.authors?[0] == null ? 0 : 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.volumeInfo.authors?[0] ?? '',
            style: Styles.kTextStyle18.copyWith(fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: book.volumeInfo.authors?[0] == null ? 0 : 12,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: book.volumeInfo.averageRating ?? 0,
          count: book.volumeInfo.ratingsCount ?? 0,
        ),
        const SizedBox(
          height: 15,
        ),
        BooksAction(
          book: book,
        ),
      ],
    );
  }
}
