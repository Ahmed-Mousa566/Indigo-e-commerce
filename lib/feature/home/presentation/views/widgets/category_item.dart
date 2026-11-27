import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/core/utils/widgets/custm_text.dart';
import 'package:e_commerce/feature/home/presentation/views/widgets/category_model.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category, this.onTap});
  final CategoryModel category;
  final VoidCallback? onTap;

  static const Map<String, IconData> _icons = {
    'fashion': Icons.checkroom,
    'electronics': Icons.headphones,
    'home': Icons.chair_outlined,
    'beauty': Icons.spa_outlined,
    'sports': Icons.fitness_center,
    'books': Icons.menu_book_outlined,
    'baby': Icons.child_care_outlined,
  };

  IconData get _icon => _icons[category.slug] ?? Icons.category_outlined;

  Widget _buildCircle() {
    return Container(
      width: 56,
      height: 56,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Icon(_icon, color: Constant.kPrimaryColor, size: 26),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 72,
        child: Column(
          children: [
            _buildCircle(),
            const SizedBox(height: 8),
            CustomText(
              text: category.name,
              color: Colors.black,
              size: 12,
              maxLines: 1,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}