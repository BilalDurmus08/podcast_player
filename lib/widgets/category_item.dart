import 'package:flutter/material.dart';

import 'package:podcast_player/model/podcast.dart';
import 'package:podcast_player/data/podcasts.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key, required this.myCategory, required this.changeByCategory});

  final void Function(List<Podcast>) changeByCategory;
  final Categories myCategory;

  @override
  Widget build(BuildContext context) {
    List<Podcast> showPodcast = []; //I put them into an list by category
    for (Podcast podcast in podcastsData) {
      if (podcast.category == myCategory) {
        showPodcast.add(podcast);
      }
    }
    if (myCategory == Categories.All) {
      showPodcast = podcastsData;
    }

    String message = myCategory.toString().split('.').elementAt(1);
    return InkWell(
      child: Container(
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
      ),
      onTap: () {
        changeByCategory(showPodcast);
      },
    );
  }
}
