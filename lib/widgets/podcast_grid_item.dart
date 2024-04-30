import 'package:flutter/material.dart';

import 'package:podcast_player/model/podcast.dart';
import 'package:podcast_player/screens/audio_screen.dart';

class PodcastGridItem extends StatelessWidget {
  const PodcastGridItem({super.key, required this.podcast});

  final Podcast podcast;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return AudioScreen(podcast: podcast);
            },
          ),
        );
      },
      child: SizedBox(
          width: 160,
          height: 250,
          child: Column(
            children: [
              Image.asset(podcast.imageUrl),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: SizedBox(
                    width: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          podcast.podcastName,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          textAlign: TextAlign.start,
                          podcast.author,
                          style: Theme.of(context).textTheme.bodyMedium,
                          
                        )
                      ],
                    )),
              ),
            ],
          )),
    );
  }
}
