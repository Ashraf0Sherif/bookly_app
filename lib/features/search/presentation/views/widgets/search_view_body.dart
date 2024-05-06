import 'package:bookly_app/features/search/presentation/logic/searched_books_cubit/searched_books_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_bar.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          const SliverToBoxAdapter(child: CustomSearchBar()),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: BlocBuilder<SearchedBooksCubit, SearchedBooksState>(
              builder: (context, state) {
                return Text(
                  (state is SearchedBooksSuccess ? "Search Result" : ''),
                  style: Styles.kTextStyle18,
                );
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          const SearchResultListView()
        ],
      ),
    );
  }
}
