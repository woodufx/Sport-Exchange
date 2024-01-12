import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sport_exchange/api/models/bucket_model.dart';
import 'package:sport_exchange/api/models/order_model.dart';
import 'package:sport_exchange/api/models/token_model.dart';
import 'package:sport_exchange/api/models/transaction_model.dart';
import 'package:sport_exchange/api/models/user_model.dart';
import 'package:sport_exchange/api/models/wishlist_model.dart';

import 'models/article_model.dart';
import 'models/content_model.dart';
import 'models/product_model.dart';

part 'api.g.dart';

@RestApi(baseUrl: 'http://relex-coin.relex.ru:7766/api')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @POST('/auth/login')
  Future<ContentModel<TokenModel>> authorize(
    @Field('login') String login,
    @Field('password') String password,
  );

  @GET('/users/user-info')
  Future<ContentModel<UserModel>> getProfile();

  @PUT('/users/user-info')
  Future<ContentModel<UserModel>> updateProfile(@Body() UserModel model);

  @GET('/buckets/products')
  Future<ContentModel<List<BucketModel>>> getBucket();

  @PUT('/buckets/products')
  Future<ContentModel<List<BucketModel>>> addToBucket(@Body() List<BucketUpdateModel> model);

  @DELETE('/buckets/products')
  Future<ContentModel<List<BucketModel>>> removeFromBucket(@Body() List<BucketDeleteModel> model);

  @DELETE('/buckets/clear')
  Future<ContentModel<String>> clearBucket();

  @GET('/wishlists/products')
  Future<ContentModel<List<ProductModel>>> getWishlist();

  @PUT('/wishlists/products')
  Future<ContentModel<List<ProductModel>>> addToWishlist(@Body() WishlistUpdateDeleteModel model);

  @DELETE('/wishlists/products')
  Future<ContentModel<List<ProductModel>>> removeFromWishlist(@Body() WishlistUpdateDeleteModel model);

  @DELETE('/wishlists/clear')
  Future<ContentModel<String>> clearWishlist();

  @GET('/transactions')
  Future<ContentModel<List<TransactionModel>>> getTransactions();

  @PUT('/wishlists/products')
  Future<ContentModel<List<ProductModel>>> topUp(@Body() TransactionCreateModel model);

  @GET('/orders')
  Future<ContentModel<OrderModel>> getOrders();

  @POST('/orders')
  Future<ContentModel<OrderModel>> createOrder();

  @GET('/products')
  Future<ContentModel<List<ProductModel>>> getProducts(
      @Queries() Map<String, String> queries);

  @GET('/articles')
  Future<ContentModel<List<ArticleModel>>> getArticles();
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
    return prefs.getString('token') ?? 'no token';
  }
}

RestClient initRestClient() {
  final dio = Dio();
  dio.options.baseUrl = 'http://relex-coin.relex.ru:7766/api';

  dio.interceptors.add(AuthInterceptor());

  return RestClient(dio);
}
