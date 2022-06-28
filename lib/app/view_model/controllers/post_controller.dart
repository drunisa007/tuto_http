import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/get.dart';
import 'package:tuto_http/app/service/app_data/data/constant_post.dart';
import 'package:tuto_http/app/service/vos/post_vo.dart';

class PostController extends GetxController {
  PostController() {
    getPostList();
  }

  RxList<PostVo> postList = RxList();

  void getPostList() {
    List<PostVo> mPostList = ConstantPost().getAllPost();
    postList.addAll(mPostList);
  }
}
