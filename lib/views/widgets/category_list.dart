
import 'package:flutter/material.dart';
import 'package:notes_app_project/views/widgets/category_item.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      "All",
      "Work",
      "Personal",
      "Ideas",
      "Shopping",
      "Fitness",
      "Books",
    ];

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryItem(title: categories[index]);
        },
      ),
    );
  }
}
