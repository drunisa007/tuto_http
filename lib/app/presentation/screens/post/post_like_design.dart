import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostLikeDesign extends StatelessWidget {
  final int likeCount;

  const PostLikeDesign({Key? key, required this.likeCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
          text: TextSpan(
              children: [
                TextSpan(text: 'Likes',style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400
                ))
              ],
              text: '$likeCount ',
              style:  TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold)),
        );
  }
}