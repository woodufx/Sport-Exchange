import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sport_exchange/api/models/token_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  @POST('/auth/login')
  Future<ContentModel<TokenModel>> authorize(
    @Field('login') String login,
    @Field('password') String password,
  );
}

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.path != '/auth/login') {
      String authToken = await getAuthToken();
      options.headers['Authorization'] = authToken;
    }

    super.onRequest(options, handler);
  }

  Future<String> getAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token') ?? 'sdsdsd';
  }
}

RestClient initRestClient() {
  final dio = Dio();
  dio.options.baseUrl = 'http://relex-coin.relex.ru:7766/api';

  dio.interceptors.add(AuthInterceptor());

  return RestClient(dio);
}
