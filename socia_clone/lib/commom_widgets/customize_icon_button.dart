import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class CustomizeIconButton extends StatelessWidget {
  const CustomizeIconButton({
    Key? key,
    required this.onTap,
    required this.icon,
  }) : super(key: key);
  final void Function() onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(icon, size: 22,color: AppColors.primaryColor,),
    );
  }
}