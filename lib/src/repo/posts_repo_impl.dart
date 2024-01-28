import 'package:posts_clean_arch/src/models/post_model.dart';
import 'package:posts_clean_arch/src/network/api_service.dart';
import 'package:posts_clean_arch/src/repo/posts_repo.dart';
import 'package:dio/dio.dart';

class PostsRepoImpl implements PostsRepo {
  ApiService apiService =
      ApiService(Dio(BaseOptions(contentType: "application/json")));

  @override
  Future<List<PostModel>> getPosts() => apiService.getPosts();
}
