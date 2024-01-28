import 'package:posts_clean_arch/src/models/post_model.dart';

abstract class PostsRepo {
  Future<List<PostModel>> getPosts();
}
