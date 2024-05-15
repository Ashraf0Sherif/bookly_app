import 'package:bookly_app/core/networking/api_result.dart';
import 'package:bookly_app/core/networking/api_service.dart';
import 'package:bookly_app/core/networking/network_exceptions.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'home_repo.dart';
class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation(this.apiService);

  @override
  Future<ApiResult<List<Book>>> fetchNewestBooks() async {
    try {
      var response = await apiService.getNewestBooks();
      List<Book> newestBooks = [];
      for (var item in response["items"]) {
        newestBooks.add(Book.fromJson(item));
      }
      return ApiResult.success(newestBooks);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }

  @override
  Future<ApiResult<List<Book>>> fetchFeaturedBooks() async {
    try {
      var response = await apiService.getFeaturedBooks();
      List<Book> featuredBooks = [];
      for (var item in response["items"]) {
        featuredBooks.add(Book.fromJson(item));
      }
      return ApiResult.success(featuredBooks);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }

  @override
  Future<ApiResult<List<Book>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var response = await apiService.getSimilarBooks(category: category);
      List<Book> similarBooks = [];
      for (var item in response["items"]) {
        Book book = Book.fromJson(item);
        if (book.volumeInfo.imageLinks != null) similarBooks.add(book);
      }
      return ApiResult.success(similarBooks);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }

}
