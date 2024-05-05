import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/logic/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksLoading) {
          return SizedBox(
              height: MediaQuery.of(context).size.height * 0.21,
              child: const CustomLoadingIndicator());
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errMessage);
        } else if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.21,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.similarBooks.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kBookDetails,
                        extra: state.similarBooks[index]);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CustomBookItem(
                      imageUrl: state.similarBooks[index].volumeInfo.imageLinks
                              ?.thumbnail ??
                          kNoCoverImage,
                    ),
                  ),
                );
              },
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
