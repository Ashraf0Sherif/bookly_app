import 'package:bookly_app/features/home/presentation/logic/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/book/book.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.book});

  final Book book;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .getSimilarBooks(category: widget.book.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const CustomBookDetailsAppBar(),
                  BookDetailsSection(
                    book: widget.book,
                  ),
                  const Expanded(
                    child: SizedBox(
                      height: 15,
                    ),
                  ),
                  const SimilarBooksSection(),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
