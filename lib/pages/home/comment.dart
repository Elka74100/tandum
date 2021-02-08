import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/article.dart';

class Comment extends StatefulWidget {
  // const Comment({ Key key }) : super(key: key);
  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {

  Map data;

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('${data['title']}'),
        backgroundColor: Colors.black87,
      ),
    );
  }
}