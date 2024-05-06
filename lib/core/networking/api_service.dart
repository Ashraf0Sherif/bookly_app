import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://www.googleapis.com/books/v1/')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('volumes?Filtering=free-ebooks&q=subject:software&Sorting=newest')
  Future<dynamic> getNewestBooks();

  @GET('volumes?Filtering=free-ebooks&q=subject:programming')
  Future<dynamic> getFeaturedBooks();

  @GET('volumes?Filtering=free-ebooks&q=subject:{category}&Sorting=relevance')
  Future<dynamic> getSimilarBooks({@Path('category') required String category});

  @GET('/volumes?q={search}')
  Future<dynamic> getSearchedBooks({@Path('search') required String search});
}
