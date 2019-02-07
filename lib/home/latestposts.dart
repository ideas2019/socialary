import 'package:flutter/material.dart';
import 'chatitem.dart';

class LatestPosts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        backgroundColor: Colors.teal,
      ),
      body: _postsGenerator(),
    );
  }
}

Widget _postsGenerator() {
    int maxPostsToShow = 10;
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: maxPostsToShow,
      itemBuilder: (BuildContext _context, int i) {
        if (i.isOdd) {
          return new Divider();
        }

        return new ChatItem();
      }
    );
}