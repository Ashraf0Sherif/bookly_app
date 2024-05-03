import 'package:bookly_app/core/networking/api_result.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';

abstract class HomeRepo {
  Future<ApiResult<List<Book>>> fetchNewestBooks();

  Future<ApiResult<List<Book>>> fetchFeaturedBooks();
}
