import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/networking/network_exceptions.dart';
import '../../../../home/data/models/book/book.dart';
import '../../../../home/repos/home_repo_implementation.dart';

part 'searched_books_state.dart';

class SearchedBooksCubit extends Cubit<SearchedBooksState> {
  final HomeRepoImplementation homeRepo;

  SearchedBooksCubit(this.homeRepo) : super(SearchedBooksInitial());

  Future<void> getSearchedBooks() async {
    emit(SearchedBooksLoading());
    var response = await homeRepo.fetchFeaturedBooks();
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
