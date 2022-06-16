class five_data {

  late String imageURL;
  late String title;
  late String author;
  late String time;

  five_data({required this.author , required this.time, required this.title , required this.imageURL});

  @override
  String toString() {
    return 'five_data{imageURL: $imageURL, title: $title, author: $author, time: $time}';
  }
}