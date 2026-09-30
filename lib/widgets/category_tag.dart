import 'package:flutter/material.dart';

class CategoryTag extends StatelessWidget {
  final String category;

  const CategoryTag({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      category,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}