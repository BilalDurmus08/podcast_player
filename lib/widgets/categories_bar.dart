import 'package:flutter/material.dart';

import 'package:podcast_player/model/podcast.dart';
import 'package:podcast_player/widgets/category_item.dart';

class CategoriesBar extends StatefulWidget {
  const CategoriesBar({super.key});

  @override
  State<CategoriesBar> createState() {
    return _CategoriesState();
  }
}

class _CategoriesState extends State<CategoriesBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (var value in Categories.values) CategoryItem(category: value),
        ],
      ),
    );
  }
}

/*
Container(color: Colors.amberAccent, width: 120,),
            Container(color: Colors.blue,  width: 120,),
            Container(color: Colors.green,  width: 120,),
            Container(color: Colors.orangeAccent,  width: 120,),
            Container(color: Colors.amberAccent, width: 120,),
            */