import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileNameTimeAgo extends StatelessWidget {

  final String time;
  final String name;

  const ProfileNameTimeAgo({Key? key, required this.time,required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                   Text(
                    name,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 12.sp),
                  ),
                  Text(
                    time,
                    style:  TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp),
                  )
                ],
              );
  }
}