import 'package:flutter/material.dart';
import 'latestarticles.dart';

void main() => runApp(new Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Home',
      home: new LatestArticles(),
    );
  }
}