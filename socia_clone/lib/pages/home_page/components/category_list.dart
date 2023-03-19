
import 'package:flutter/material.dart';

import '../../../repositories/category_repository.dart';
import 'category_tile.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
    required this.categoryRepository,
  }) : super(key: key);

  final CategoryRepository categoryRepository;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(left: 8, top: 10),
      height: 40,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, item) {
          final category = categoryRepository.categories;
          return CategoryTile(
            nameCategory: category[item].name,
            isSelected: category[item].isSelected,
          );
        },
        separatorBuilder: (_, i) => const SizedBox(width: 10),
        itemCount: categoryRepository.categories.length,
      ),
    );
  }
}
