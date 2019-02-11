import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'slider.dart';
import 'socialloginbuttons.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(fontFamily: 'Oswald'),
        ),
        leading: new IconButton(
            onPressed: () {
              print('Pressed!');
            },
            icon: Icon(FontAwesomeIcons.tablet)),
      ),
      body: _loginBody(context)
    );
  }

  Widget _loginBody(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new TheSlider(),
          SizedBox(height: 80.0),
          new SocialLoginButtons(),
        ],
      );
  }
}
