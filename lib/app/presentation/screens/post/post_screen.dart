import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tuto_http/app/presentation/screens/post/post_single_design.dart';
import 'package:tuto_http/app/view_model/controllers/post_controller.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PostController mPostController = Get.find<PostController>();
    return Obx(() {
      return ListView.builder(
        padding: EdgeInsets.symmetric(
          vertical: 10.w,
          horizontal: 30.w,
        ),
        itemBuilder: ((context, index) {
          return  PostSingleDesign(mPost: mPostController.postList[index],);
        }),
        itemCount: mPostController.postList.length,
      );
    });
  }
}
