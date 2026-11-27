import 'package:e_commerce/feature/home/presentation/views/widgets/categories_list.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/category_model.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/section_heager.dart';
import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SectionHeader(),
        SizedBox(height: 12),
        CategoriesList(categories: dummyCategories),
      ],
    );
  }
}