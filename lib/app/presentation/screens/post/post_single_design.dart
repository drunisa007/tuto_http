import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tuto_http/app/presentation/screens/post/post_like_design.dart';
import 'package:tuto_http/app/presentation/screens/post/profile_name_time_ago.dart';
import 'package:tuto_http/app/presentation/widgets/post_single_bg.dart';
import 'package:tuto_http/app/presentation/widgets/profile_image_design.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:tuto_http/app/service/vos/post_vo.dart';

class PostSingleDesign extends StatelessWidget {

  final PostVo mPost;

  const PostSingleDesign({Key? key, required this.mPost}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final time = timeago.format((mPost.publishDate),
        locale: 'en');

    return PostSingleBg(
      customChild:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfileImageDesign(
                imageUrl:
                    mPost.owner.picture,
              ),
               SizedBox(
                width: 8.w,
              ),
              ProfileNameTimeAgo(
                time: time,
                name: "${mPost.owner.firstName} ${mPost.owner.lastName}" ,
              )
            ],
          ),
        ),
         SizedBox(
          height: 8.w,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            imageUrl:
                mPost.image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 185.h,
          ),
        ),
         SizedBox(
          height: 8.w,
        ),
        Text(
          mPost.text,
          style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500),
        ),
         SizedBox(
          height: 8.w,
        ),
         PostLikeDesign(likeCount: mPost.likes),
          SizedBox(
          height: 4.w,
        ),
        const Divider(),
          SizedBox(
          height: 4.w,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            FaIcon(
              FontAwesomeIcons.heart,
              size: 24.sp,
              color: Colors.black,
            ),
            SizedBox(
              width: 16.w,
            ),
            FaIcon(
              FontAwesomeIcons.comment,
              size: 24.sp,
              color: Colors.black,
            ),
          ],
        )
      ]),
    );
  }
}
