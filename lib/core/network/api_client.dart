import 'package:dio/dio.dart';
import 'package:shoppe/features/authentication/auth/data/models/user_model.dart';
import 'package:shoppe/features/authentication/auth/domain/entity/user_entity.dart';
import '/core/data/model/food/food_model.dart';
import 'package:retrofit/retrofit.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: "http://192.168.28.160:3000")
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;
  @GET("/posts")
  Future<List<FoodModel>> getPosts();
  @POST("/api/auth/signIn")
  Future<UserModel> signIn(@Body() UserModel userModel);
  @POST("/api/auth/test")
  Future<void>test();
}
