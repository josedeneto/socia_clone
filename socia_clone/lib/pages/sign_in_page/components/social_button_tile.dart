import 'package:flutter/material.dart';

class SocialButtonTile extends StatelessWidget {
  const SocialButtonTile({
    Key? key,
    required this.imagePath,
  }) : super(key: key);
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(20),
      child: Image.asset(
        imagePath,
        height: 25,
      ),
    );
  }
}
