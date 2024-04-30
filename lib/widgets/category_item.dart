import 'package:flutter/material.dart';

import 'package:podcast_player/model/podcast.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final Categories category;

  @override
  Widget build(BuildContext context) {
    String message = category.toString().split('.').elementAt(1);
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),
        color: Theme.of(context).primaryColor,
      ),
      child: Text(
        message,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 17),
      ),
    );
  }
}
