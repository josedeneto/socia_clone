// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:socia_clone/controllers/signin_controller.dart';
import 'package:socia_clone/core/app_colors.dart';

class CustomLoadingButton extends StatelessWidget {
  final signInController = SignInController();
  CustomLoadingButton({
    Key? key,
    required this.textButton,
    required this.onPressed,
    this.isLoading = false,
    this.onTextLoad,
  }) : super(key: key);
  final String textButton;
  final void Function()? onPressed;
  final bool isLoading;
  final String? onTextLoad;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [AppColors.defaultBlue, AppColors.pinkShade700],
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          onPrimary: AppColors.white,
          primary: isLoading ? Colors.transparent : Colors.transparent,
        ),
        child: isLoading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(
                      strokeWidth: 1.50,
                      color: AppColors.white,
                      backgroundColor: AppColors.primaryColor,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(AppColors.white),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '$onTextLoad...',
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              )
            : Text(
                textButton,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
      ),
    );
  }
}
