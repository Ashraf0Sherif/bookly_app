part of 'searched_books_cubit.dart';

@immutable
abstract class SearchedBooksState {}

class SearchedBooksInitial extends SearchedBooksState {}

class SearchedBooksLoading extends SearchedBooksState {}

class SearchedBooksSuccess extends SearchedBooksState {
  final List<Book> searchedBooks;

  SearchedBooksSuccess(this.searchedBooks);
}

class SearchedBooksFailure extends SearchedBooksState {
  final String errMessage;

  SearchedBooksFailure(this.errMessage);
}
