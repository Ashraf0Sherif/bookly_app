import 'package:bookly_app/core/networking/api_result.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/search/repos/search_repo.dart';

import '../../../core/networking/api_service.dart';
import '../../../core/networking/network_exceptions.dart';

class SearchRepoImplementation implements SearchRepo {
  final ApiService apiService;

  SearchRepoImplementation(this.apiService);

  @override
  Future<ApiResult<List<Book>>> fetchSearchedBooks(
      {required String search}) async {
    try {
      var response = await apiService.getSearchedBooks(search: search);
      List<Book> searchedBooks = [];
      for (var item in response["items"]) {
        Book book = Book.fromJson(item);
        if (book.volumeInfo.imageLinks != null) searchedBooks.add(book);
      }
      return ApiResult.success(searchedBooks);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
