import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuto_http/app/presentation/screens/post/profile_name_time_ago.dart';
import 'package:tuto_http/app/presentation/widgets/post_single_bg.dart';
import 'package:tuto_http/app/service/vos/user_vo.dart';

import '../../widgets/profile_image_design.dart';

class AccountSingleDesign extends StatelessWidget {

  final UserVo  user;

  const AccountSingleDesign({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  PostSingleBg(
      customChild:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               ProfileImageDesign(
                imageUrl:user.picture,
              ),
               SizedBox(
                width: 8.w,
              ),
               ProfileNameTimeAgo(
                time: user.id,
                name: "${user.firstName} ${user.lastName}" ,
              )
            ],
          ),
        ),
        ]));
  }
}