import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'models/content_model.dart';
import 'models/product_model.dart';
import 'models/article_model.dart';

part 'api.g.dart';

@RestApi(baseUrl: 'http://relex-coin.relex.ru:7766/api')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/products')
  Future<ContentModel<List<ProductModel>>> getProducts(
      @Queries() Map<String, String> queries);

  @GET('/products')
  Future<ContentModel<List<ProductModel>>> getProductsWithoutParameters();

  @GET('/articles')
  Future<ContentModel<List<ArticleModel>>> getArticles();
}

RestClient initRestClient() {
  final dio = Dio();
  dio.options.headers['Authorization'] =
      'Bearer fa1b64dc-319c-4504-bc3e-e2e625487f47';
  return RestClient(dio);
}
