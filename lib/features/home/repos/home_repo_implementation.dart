import 'package:bookly_app/core/networking/api_result.dart';
import 'package:bookly_app/core/networking/api_service.dart';
import 'package:bookly_app/core/networking/network_exceptions.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/home/repos/home_repo.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation(this.apiService);

  @override
  Future<ApiResult<List<Book>>> fetchNewestBooks() async {
    try {
      List<Book> response = await apiService.getNewestBooks();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }

  @override
  Future<ApiResult<List<Book>>> fetchFeaturedBooks() async {
    try {
      List<Book> response = await apiService.getFeaturedBooks();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
