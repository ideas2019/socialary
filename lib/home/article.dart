import 'package:flutter/material.dart';
import 'package:badge/badge.dart';
import 'package:english_words/english_words.dart';

class Article extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          leftSection(context),
          middleSection(context),
        ],
      ),
    );
  }

  Widget leftSection(BuildContext context) {
    return new Container(
      child: new Icon(
          Icons.play_circle_outline,
          size: 40.0,
          color: Theme.of(context).highlightColor,
      ),
    );
  }

  Widget middleSection(BuildContext context) {
    return new Expanded(
      child: new Container(
        padding: new EdgeInsets.only(left: 8.0),
        child: middleContent(context)
      ),
    );
  }

  Widget middleContent(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        new Text(
          generateWordPairs().take(1).toString(),
          style: Theme.of(context).textTheme.title,
        ),
        new Divider(
          color: Colors.transparent,
        ),
        Row(
          children: buildTags(context)
        )
      ],
    );
  }

  List<Widget> buildTags(BuildContext context) {
    var items = [
      'health',
      'sports',
      'running'
    ];
    List<Widget> tags = <Widget>[];

    for (var item in items) {
      tags.add(buildTag(context, item));
    }

    return tags;
  }

  Widget buildTag(BuildContext context, String word) {
    return new Badge.before(
      value: word,
      color: Theme.of(context).hintColor,
      borderColor: Theme.of(context).hintColor,
      child: Text(''),
      spacing: 10.0,
    );
  }
}