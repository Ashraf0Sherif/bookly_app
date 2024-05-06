import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/repos/home_repo_implementation.dart';
import 'package:meta/meta.dart';

import '../../../../../core/networking/network_exceptions.dart';
import '../../../data/models/book/book.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  final HomeRepoImplementation homeRepo;

  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  Future<void> getFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var response = await homeRepo.fetchFeaturedBooks();
    print(response);
    response.when(
      success: (List<Book> featuredBooks) {
        emit(FeaturedBooksSuccess(featuredBooks));
      },
      failure: (NetworkExceptions networkExceptions) {
        emit(FeaturedBooksFailure(
            NetworkExceptions.getErrorMessage(networkExceptions)));
      },
    );
  }
}
