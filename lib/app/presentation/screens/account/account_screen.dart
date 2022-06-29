import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/instance_manager.dart';
import 'package:tuto_http/app/presentation/screens/account/account_single_design.dart';
import 'package:tuto_http/app/view_model/controllers/account_controller.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   AccountController mAccountController = Get.find<AccountController>();

    return ListView.builder(
        padding: EdgeInsets.symmetric(
          vertical: 10.w,
          horizontal: 30.w,
        ),
        itemBuilder: ((context, index) {
          return  AccountSingleDesign(user: mAccountController.userList[index],);
        }),
        itemCount: mAccountController.userList.length,
      );;
  }
}