import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://www.googleapis.com/books/v1/')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest')
  Future<dynamic> getNewestBooks();

  @GET('volumes?Filtering=free-ebooks&q=subject:programming')
  Future<dynamic> getFeaturedBooks();
}
