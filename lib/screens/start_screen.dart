import 'package:flutter/material.dart';

import 'package:podcast_player/screens/discover_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;

    Widget currentModeWidget;
    Widget portraitMode;
    Widget landscapeMode;

    portraitMode = Center(
      //For portraid mode !!!!
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          ClipRRect(
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(100)), //I made the image
              child: Image.asset('assets/images/first-page-woman.png')),
          const SizedBox(height: 42),
          Text('Podkes', style: Theme.of(context).textTheme.displayMedium),
          const SizedBox(height: 24),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(
            height: 152,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            height: 70,
            width: 70,
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => const DiscoverScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.arrow_forward_outlined,
                size: 32,
              ),
              color: const Color.fromRGBO(82, 80, 152, 1),
            ),
          )
        ],
      ),
    );

    landscapeMode = Container(
      margin: const EdgeInsets.symmetric(horizontal: 75, vertical: 40),
      child: Row(
        //For landscape mode !!!!

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
                top: Radius.circular(100)), //I made the image
            child: Image.asset('assets/images/first-page-woman.png'),
          ),
          const SizedBox(
            width: 100,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Podkes',
                    style: Theme.of(context).textTheme.displayMedium),
                const SizedBox(height: 24),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                const Expanded( //With this I put my button at bottom.
                  child: SizedBox(),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  height: 70,
                  width: 70,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => const DiscoverScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_forward_outlined,
                      size: 32,
                    ),
                    color: const Color.fromRGBO(82, 80, 152, 1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    currentModeWidget = portraitMode;

    if (orientation == Orientation.landscape) {
      currentModeWidget = landscapeMode;
    }

    return Scaffold(body: currentModeWidget);
  }
}
