import 'package:flutter/material.dart';
import 'article.dart';

class LatestArticles extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      body: _articlesRenderer(),
    );
  }
}

Widget _articlesRenderer() {
    int maxArticlesToShow = 10;
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: maxArticlesToShow,
      itemBuilder: (BuildContext _context, int i) {
        if (i.isOdd) {
          return new Divider(
            color: Theme.of(_context).hintColor,
          );
        }
        return new Article();
      }
    );
}