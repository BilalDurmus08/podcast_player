class Podcast {
  const Podcast(this.imageUrl, this.podcastName, this.author, this.category);

  final String imageUrl;
  final String podcastName;
  final String author;
  final Categories category;
}

enum Categories {
All,
Life,
Comedy,
Tech
}
