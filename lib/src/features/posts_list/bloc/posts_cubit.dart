import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts_clean_arch/src/repo/posts_repo_impl.dart';

import '../../../models/post_model.dart';

part 'posts_state.dart';

@injectable
class PostsCubit extends Cubit<PostsState> {
  final PostsRepoImpl postsRepoImpl;

  PostsCubit(this.postsRepoImpl) : super(InitState());

  fetchPosts() async {
    emit(LoadingState());
    try {
      final posts = await postsRepoImpl.getPosts();
      emit(SuccessState(posts));
    } catch (e) {
      emit(ErrorState("ERROR : $e"));
    }
  }
}
