import 'comment.dart';

class Article {
  String id;
  String date;
  String title;
  String authorLogo;
  String author;
  int pertinent;
  int notPertinent;
  String pictureUrl;
  List<Comment> comments;

  Article({this.id, this.date, this.title, this.authorLogo, this.author, this.pertinent, this.notPertinent, this.pictureUrl, this.comments});

}