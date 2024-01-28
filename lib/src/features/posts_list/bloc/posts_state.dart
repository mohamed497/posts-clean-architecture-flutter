

part of 'posts_cubit.dart';

@immutable
abstract class PostsState{}

class InitState extends PostsState{}

class LoadingState extends PostsState{}

class SuccessState extends PostsState{
  final List<PostModel> posts;

  SuccessState(this.posts);
}

class ErrorState extends PostsState{
  final String errorMsg;

  ErrorState(this.errorMsg);
}
