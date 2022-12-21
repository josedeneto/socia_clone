import 'package:flutter/material.dart';
import 'package:socia_clone/core/app_colors.dart';

class AppTheme{
  static  ThemeData theme = ThemeData(
      fontFamily: 'Martel Sans',
      primarySwatch: AppColors.primaryColor,
      iconTheme: const IconThemeData(color: AppColors.defaultGreyShade500)
  );
}

