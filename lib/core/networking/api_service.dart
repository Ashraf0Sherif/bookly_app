import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/home/data/models/book/book.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://www.googleapis.com/books/v1/')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest')
  Future<List<Book>> getAllBooks();
}
