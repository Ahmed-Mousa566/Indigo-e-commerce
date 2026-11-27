import 'package:e_commerce/feature/home/presentation/views/widgets/category_item.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/category_model.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key, required this.categories});
  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (_, index) => CategoryItem(
          category: categories[index],
          onTap: () {},
        ),
      ),
    );
  }
}