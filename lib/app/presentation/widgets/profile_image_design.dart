
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileImageDesign extends StatelessWidget {

  final String imageUrl;
  const ProfileImageDesign({Key? key, required this.imageUrl,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                width: 48.w,
                height: 48.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.w),
                  border: Border.all(
                      width: 1.w, color: Theme.of(context).primaryColor),
                ),
                child: Container(
                width: 42.w,
                height: 42.w,
                margin: EdgeInsets.all(1.3.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.w),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      imageUrl,
                    ),
                    fit: BoxFit.cover
                  ),
                ),
              ),
              );
  }
}