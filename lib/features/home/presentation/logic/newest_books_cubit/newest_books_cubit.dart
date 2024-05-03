import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/networking/network_exceptions.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book/book.dart';
import '../../../repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  final HomeRepo homeRepo;

  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  Future<void> getNewestBooks() async {
    emit(NewestBooksLoading());
    var response = await homeRepo.fetchNewestBooks();
    response.when(
      success: (List<Book> newestBooks) {
        emit(NewestBooksSuccess(newestBooks));
      },
      failure: (NetworkExceptions networkExceptions) {
        emit(NewestBooksFailure(
            NetworkExceptions.getErrorMessage(networkExceptions)));
      },
    );
  }
}
