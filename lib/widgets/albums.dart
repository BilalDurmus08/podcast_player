import 'package:flutter/material.dart';

import 'package:podcast_player/model/podcast.dart';
import 'package:podcast_player/widgets/podcast_grid_item.dart';

class Albums extends StatefulWidget {
  const Albums({super.key, required this.myPodcasts});

  final List<Podcast> myPodcasts;

  @override
  State<Albums> createState() {
    return _AlbumsState();
  }
}

class _AlbumsState extends State<Albums> {
  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;

    Widget currentModeWidget;
    Widget portraitMode;
    Widget landscapeMode;

    portraitMode = SizedBox(
      height: 1000,
      width: 370,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.70,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        children: [
          for (Podcast podcast in widget.myPodcasts)
            PodcastGridItem(
              podcast: podcast,
            ),
        ],
      ),
    );
    landscapeMode = SizedBox(
      height: 500,
      width: 600,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.70,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        children: [
          for (Podcast podcast in widget.myPodcasts)
            PodcastGridItem(
              podcast: podcast,
            ),
        ],
      ),
    );

    currentModeWidget = portraitMode;

    if (orientation == Orientation.landscape) {
      currentModeWidget = landscapeMode;
    }

    return currentModeWidget;
  }
}
