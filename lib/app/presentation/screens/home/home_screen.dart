import 'package:flutter/material.dart';
import 'package:tuto_http/app/presentation/screens/home/post_single_design.dart';
import 'package:tuto_http/app/service/app_data/data/constant_post.dart';
import 'package:tuto_http/app/service/vos/post_vo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PostVo> mPostList = ConstantPost().getAllPost();

    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 40,
      ),
      itemBuilder: ((context, index) {
        return const PostSingleDesign();
      }),
      itemCount: mPostList.length,
    );
  }
}
