class CategoryModel {
  final int id;
  final String name;
  final String slug;

  const CategoryModel({
    required this.id,
    required this.name,
    required this.slug,
  });
}

const List<CategoryModel> dummyCategories = [
  CategoryModel(id: 1, name: 'Fashion', slug: 'fashion'),
  CategoryModel(id: 2, name: 'Electronics', slug: 'electronics'),
  CategoryModel(id: 3, name: 'Home', slug: 'home'),
  CategoryModel(id: 4, name: 'Beauty', slug: 'beauty'),
  CategoryModel(id: 5, name: 'Sports', slug: 'sports'),
];