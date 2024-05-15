import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/networking/network_exceptions.dart';
import '../../../data/models/book/book.dart';
import '../../../domain/repos/home_repo_implementation.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  final HomeRepoImplementation homeRepo;

  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  Future<void> getSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var response = await homeRepo.fetchSimilarBooks(category: category);
    response.when(
      success: (List<Book> similarBooks) {
        emit(SimilarBooksSuccess(similarBooks));
      },
      failure: (NetworkExceptions networkExceptions) {
        emit(SimilarBooksFailure(
            NetworkExceptions.getErrorMessage(networkExceptions)));
      },
    );
  }
}
