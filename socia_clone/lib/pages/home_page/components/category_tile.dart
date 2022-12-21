// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    Key? key,
    required this.isSelected,
    required this.nameCategory,
  }) : super(key: key);
  final bool isSelected;
  final String nameCategory;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: isSelected
                ? AppColors.primaryColor
                : AppColors.defaultPurpleShade,
          ),
          child: Text(
            nameCategory,
            style: TextStyle(
              fontSize: isSelected ? 13 : 12,
              fontWeight: FontWeight.w700,
              color: isSelected ? Colors.white : Colors.purple.shade400,
            ),
          ),
        ),
      ),
    );
  }
}
