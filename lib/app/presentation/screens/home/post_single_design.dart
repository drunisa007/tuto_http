import 'package:flutter/material.dart';
import 'package:tuto_http/app/presentation/widgets/post_single_bg.dart';

class PostSingleDesign extends StatelessWidget {
  const PostSingleDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PostSingleBg(
      customChild: Text('Something'),
    );
  }
}
