import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuto_http/app/presentation/screens/post/post_single_design.dart';
import 'package:tuto_http/app/service/app_data/data/constant_post.dart';
import 'package:tuto_http/app/service/vos/post_vo.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PostVo> mPostList = ConstantPost().getAllPost();

    return ListView.builder(
      padding:  EdgeInsets.symmetric(
        vertical: 10.w,
        horizontal: 30.w,
      ),
      itemBuilder: ((context, index) {
        return const PostSingleDesign();
      }),
      itemCount: mPostList.length,
    );
  }
}
