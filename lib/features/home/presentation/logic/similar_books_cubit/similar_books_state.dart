part of 'similar_books_cubit.dart';

@immutable
abstract class SimilarBooksState {}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksSuccess extends SimilarBooksState {
  List<Book> similarBooks;

  SimilarBooksSuccess(this.similarBooks);
}

class SimilarBooksFailure extends SimilarBooksState {
  final String errMessage;

  SimilarBooksFailure(this.errMessage);
}
