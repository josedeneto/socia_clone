import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, right: 6),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 45,
        child: TextFormField(
          decoration: InputDecoration(
            isDense: true,
            filled: true,
            hintText: 'O que voce deseja...',
            hintStyle: const TextStyle(
              fontSize: 13,
              color: AppColors.defaultGreyShade500,
            ),
            prefixIcon: const Icon(
              Icons.search_rounded,
              size: 25,
              color: AppColors.defaultGreyShade500,
            ),
            suffixIcon: const Icon(
              Icons.tune_rounded,
              size: 25,
              color: AppColors.defaultGreyShade500,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
      ),
    );
  }
}
