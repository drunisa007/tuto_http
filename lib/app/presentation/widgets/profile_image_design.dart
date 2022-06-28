
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileImageDesign extends StatelessWidget {

  final String imageUrl;
  const ProfileImageDesign({Key? key, required this.imageUrl,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                      width: 1, color: Theme.of(context).primaryColor),
                ),
                child: Container(
                width: 45,
                height: 45,
                margin: const EdgeInsets.all(1.3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
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