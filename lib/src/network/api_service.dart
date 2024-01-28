import 'package:dio/dio.dart';
import 'package:posts_clean_arch/src/models/post_model.dart';
import 'package:retrofit/http.dart';

import '../utils/constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: BASE_URL)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('posts')
  Future<List<PostModel>> getPosts();
}
