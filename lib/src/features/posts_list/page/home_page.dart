import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts_clean_arch/src/di/injector.dart';
import 'package:posts_clean_arch/src/features/posts_list/bloc/posts_cubit.dart';
import 'package:posts_clean_arch/src/models/post_model.dart';

import 'post_item.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PostsCubit _cubit;

  @override
  void initState() {
    _cubit = inject();
    _cubit.fetchPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("POSTS PAGE"),
      ),
      body: BlocBuilder<PostsCubit, PostsState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.orange,),
            );
          } else if (state is SuccessState) {
            return ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(),
                ), itemBuilder: (context, index) {
              final post = state.posts[index];
              return PostItem(
                  post: post
              );
            }, itemCount: state.posts.length);
          } else if (state is ErrorState) {
            return Center(child: Text(state.errorMsg));
          } else {
            return Text("NO DATA");
          }
        },
      ),
    );
  }
}
