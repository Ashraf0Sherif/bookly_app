import 'package:bookly_app/core/networking/api_result.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/home/repos/home_repo.dart';

class HomeRepoImplementation implements HomeRepo{
  @override
  Future<ApiResult<List<Book>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<ApiResult<List<Book>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}