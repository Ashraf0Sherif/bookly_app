import 'package:bookly_app/core/networking/api_result.dart';

import '../entites/book_entity.dart';

abstract class HomeRepo {
  Future<ApiResult<List<BookEntity>>> fetchFeaturedBooks();

  Future<ApiResult<List<BookEntity>>> fetchNewestBooks();
}
