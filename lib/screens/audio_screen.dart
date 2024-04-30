import 'package:flutter/material.dart';

import 'package:podcast_player/model/podcast.dart';

class AudioScreen extends StatefulWidget {
  const AudioScreen({super.key, required this.podcast});

  final Podcast podcast;

  @override
  State<AudioScreen> createState() {
    return _AudioScreenState();
  }
}

class _AudioScreenState extends State<AudioScreen> {
  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;

    Widget currentModeWidget;
    Widget portraitMode;
    Widget landscapeMode;

    //PORTRAID MODE!!!

    portraitMode = SizedBox.expand(
      //I used SizedBox.expand because the widget don't take all the horizontal space available by default.
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 58),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 280,
              width: 297,
              child: Image.asset(
                widget.podcast.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              widget.podcast.podcastName,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Container(
              //I do not know why but without this container text couldn't stay at start position.
              margin: const EdgeInsets.only(left: 8),
              alignment: Alignment.topLeft,
              child: Text(
                textAlign: TextAlign.left,
                widget.podcast.author,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );

    //LANDSCAPE MODE!!!

    landscapeMode = SizedBox.expand(
      //I used SizedBox.expand because the widget don't take all the horizontal space available by default.
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 45),
        child: Row(
          children: [
            SizedBox(
              height: 280,
              width: 297,
              child: Image.asset(
                widget.podcast.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 55),
            Column(
              children: [
               const SizedBox(height: 35,),
                Text(
                  widget.podcast.podcastName,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                Container(
                  //I do not know why but without this container text couldn't stay at start position.
                  margin: const EdgeInsets.only(left: 8),
                  alignment: Alignment.topLeft,
                  child: Text(
                    textAlign: TextAlign.left,
                    widget.podcast.author,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 18),
                  ),
                ),
              ],
            ),
          
          ],
        ),
      ),
    );

    currentModeWidget = portraitMode;

    if (orientation == Orientation.landscape) {
      currentModeWidget = landscapeMode;
    }

    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white, size: 27),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(20, 62, 69, 120),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
          title: Text(
            'Now Playing',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.normal),
          ),
        ),
        body: currentModeWidget);
  }
}
