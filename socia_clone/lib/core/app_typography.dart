import 'package:flutter/material.dart';
import 'package:socia_clone/core/app_colors.dart';

class AppTypography {
  static TextStyle? bodyText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1;
  }

  static TextStyle? bodyTextBold(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyText1!
        .copyWith(fontSize: 16, fontWeight: FontWeight.w800);
  }

  static TextStyle? subtitleSection(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.grey.shade500,
        );
  }

  static TextStyle? showAll(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        );
  }

  static TextStyle? priceCategory(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 14,
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w800,
        );
  }

  static TextStyle? itemCategory(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 11,
          color: AppColors.defaultGreyShade500,
        );
  }

  static TextStyle? isPromotion(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          decoration: TextDecoration.lineThrough,
          color: AppColors.defaultGreyShade500,
          fontSize: 11,
        );
  }

  static TextStyle? itemName(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 13,
        );
  }

  static TextStyle? locationAdressText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          fontWeight: FontWeight.normal,
          fontSize: 12,
          color: AppColors.defaultGreyShade500,
        );
  }

  static TextStyle? myLocationTet(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1!.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 12,
          color: AppColors.defaultBlack87,
        );
  }
}
