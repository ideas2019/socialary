import 'package:flutter/material.dart';
import 'latestposts.dart';

void main() => runApp(new Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Home',
      home: new LatestPosts(),
      theme: new ThemeData(
        primaryColor: Colors.teal,
      ),
    );
  }
}

// class LatestPostsState extends State<LatestPosts> {
//   final List<WordPair> _posts = <WordPair>[];
//   final Set<WordPair> _archived = new Set<WordPair>();
//   final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);
//   final maxPostsToShow = 10;

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Home'),
//         actions: <Widget>[
//           new IconButton(icon: const Icon(Icons.home), onPressed: () {}),
//           new IconButton(icon: const Icon(Icons.archive), onPressed: () {}),
//           new IconButton(icon: const Icon(Icons.portrait), onPressed: () {}),
//         ],
//       ),
//       body: _buildPosts()
//     );
//   }

//   Widget _buildPosts() {
//     _posts.addAll(generateWordPairs().take(10));

//     return new GridView.count(
//       padding: const EdgeInsets.all(16.0),
//       crossAxisCount: 1,
//       children: List.generate(maxPostsToShow, (index) {
//         if (index.isOdd) {
//           return new Divider();
//         }
//         return Text(
//           'sdfsd',
//           style: Theme.of(context).textTheme.headline,
//         );//_buildRow(_posts[index]);
//       }),
//     );
//   }

//   Widget _buildRow(WordPair post) {
//     return new Column(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: <Widget>[
//         Container(
//           height: 40.0,
//           child: new ListTile(
//             title: new Text(
//               // TO DO: Replace with post content
//               post.asString,
//               style: _biggerFont,
//             ),
//             leading: new Icon(
//               Icons.play_circle_outline,
//             ),
//           ),
//         ),
//         Container(
//           height: 40.0,
//           child: _buildCoincidences()
//         )
//       ]
//     );
//   }

//   Widget _buildCoincidences()
//   {
//     return new Stack(
//       children: <Widget>[
//         new Positioned(
//           top: 0.0,
//           child: Icon(Icons.label_outline),
//         ),
//         new Positioned(
//           top: 20.0,
//           child: Text('testa')
//         ),
//       ],
//     );
//   }
// }

// class LatestPosts extends StatefulWidget {
//   @override
//   LatestPostsState createState() => new LatestPostsState();
// }