
import 'package:cheer/models/doctor/post.dart';
import 'package:cheer/shared/components/Widget/widgets/postWidget.dart';
import 'package:flutter/material.dart';


class PostsList extends StatelessWidget {
  final List<Post> posts;
  const PostsList({
    Key? key,
    required this.posts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        Post _post = posts[index];
        return PostWidget(
          post: _post,
          index: index,
        );
      },
      itemCount: 4,
    );
  }
}
