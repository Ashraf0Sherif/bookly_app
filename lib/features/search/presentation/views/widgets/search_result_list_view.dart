import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/search/presentation/logic/searched_books_cubit/searched_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../home/presentation/views/widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchedBooksCubit, SearchedBooksState>(
      builder: (context, state) {
        if (state is SearchedBooksSuccess) {
          return SliverList.builder(
            itemCount: state.searchedBooks.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  book: state.searchedBooks[index],
                ),
              );
            },
          );
        } else if (state is SearchedBooksLoading) {
          return const SliverToBoxAdapter(child: CustomLoadingIndicator());
        } else if (state is SearchedBooksFailure) {
          return SliverToBoxAdapter(child: CustomErrorWidget(errorMessage: state.errMessage));
        } else {
          return SliverToBoxAdapter(child: Container());
        }
      },
    );
  }
}
