import 'package:flutter/material.dart';

import 'package:podcast_player/model/podcast.dart';
import 'package:podcast_player/data/podcasts.dart';
import 'package:podcast_player/widgets/albums.dart';
import 'package:podcast_player/widgets/footer_nav_bar.dart';
import 'package:podcast_player/widgets/text_field.dart';
import 'package:podcast_player/widgets/categories_bar.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() {
    return _DiscoverScreenState();
  }
}
  List<Podcast> localPodcasts = podcastsData;
 


class _DiscoverScreenState extends State<DiscoverScreen> {

void bringPodcast(List<Podcast> byCategoryPodcasts){
 setState(() {
   localPodcasts = byCategoryPodcasts;
 }); 
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const FooterNavBar(), //GNav Widget
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white, size: 27),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(20, 62, 69, 120),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu_open),
        ),
        title: Text(
          'Podkes',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyTextField(), //Here TEXTFIELD
             CategoriesBar(bringPodcast), //Here CategoriesBar
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 28,
                vertical: 4,
              ), //Trending message
              alignment: Alignment.centerLeft,
              child: const Text(
                'Trending',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
             Albums(myPodcasts: localPodcasts,), //Rest of the albums part
          ],
        ),
      ),
    );
  }
}
