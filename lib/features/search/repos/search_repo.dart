import '../../../core/networking/api_result.dart';
import '../../home/data/models/book/book.dart';

abstract class SearchRepo {
  Future<ApiResult<List<Book>>> fetchSearchedBooks({required String search});
}
