
import 'package:get/get.dart';
import 'package:tuto_http/app/service/app_data/data/constant_user.dart';
import 'package:tuto_http/app/service/vos/user_vo.dart';

class AccountController
 extends GetxController {
  AccountController() {
    getUserList();
  }

  RxList<UserVo> userList = RxList();

  void getUserList() {
    List<UserVo> mPostList = ConstantUser().getAllUser();
    userList.addAll(mPostList);
  }
}
