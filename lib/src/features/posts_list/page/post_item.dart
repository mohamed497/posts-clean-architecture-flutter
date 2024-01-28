import 'package:flutter/material.dart';
import 'package:posts_clean_arch/src/models/post_model.dart';

class PostItem extends StatelessWidget {
  PostModel post;

  PostItem({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(post.title)],
        )
      ]),
    );
  }
}
