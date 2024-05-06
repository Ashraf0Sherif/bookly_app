import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/search/repos/search_repo_implementaion.dart';
import 'package:meta/meta.dart';

import '../../../../../core/networking/network_exceptions.dart';
import '../../../../home/data/models/book/book.dart';

part 'searched_books_state.dart';

class SearchedBooksCubit extends Cubit<SearchedBooksState> {
  final SearchRepoImplementation searchRepo;

  SearchedBooksCubit(this.searchRepo) : super(SearchedBooksInitial());

  Future<void> getSearchedBooks({required String search}) async {
    emit(SearchedBooksLoading());
    var response = await searchRepo.fetchSearchedBooks(search: search);
    print(response);
    response.when(
      success: (List<Book> searchedBooks) {
        emit(SearchedBooksSuccess(searchedBooks));
      },
      failure: (NetworkExceptions networkExceptions) {
        emit(SearchedBooksFailure(
            NetworkExceptions.getErrorMessage(networkExceptions)));
      },
    );
  }
}
