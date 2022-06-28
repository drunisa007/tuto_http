import 'package:flutter/material.dart';

class ProfileNameTimeAgo extends StatelessWidget {

  final String time;

  const ProfileNameTimeAgo({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text(
                    'Aung Thu Katwal',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 14),
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  )
                ],
              );
  }
}