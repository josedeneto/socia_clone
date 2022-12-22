import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class CustomizeOutlineButton extends StatelessWidget {
  const CustomizeOutlineButton({
    Key? key,
    required this.textButton,
    required this.onPressed,
  }) : super(key: key);
  final String textButton;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          primary: AppColors.primaryColor,
          elevation:0,
          side: const BorderSide(
            color: AppColors.primaryColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: onPressed,
        child: Text(textButton),
      ),
    );
  }
}
