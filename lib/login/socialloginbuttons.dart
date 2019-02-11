import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialLoginButtons extends StatelessWidget {
  @override build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        twitterButton(context),
        SizedBox(height: 20.0),
        googleButton(context),
        SizedBox(height: 20.0),
        facebookButton(context),
      ],
    );
  }

  Widget twitterButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15.0, left: 15.0),
      height: 40.0,
      child: Material(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.blueGrey,
        elevation: 7.0,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/home');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: new IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home');
                    },
                    icon: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                    )),
              ),
              SizedBox(width: 10.0),
              Center(
                child: Text(
                  'Log in with Twitter',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Oswald',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget googleButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15.0, left: 15.0),
      height: 40.0,
      child: Material(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey,
        elevation: 7.0,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/home');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: new IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                  icon: Icon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                  )
                ),
              ),
              SizedBox(width: 10.0),
              Center(
                child: Text(
                  'Log in with Google',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Oswald',
                  ),
                ),
              )
            ],
          )
        )
      )
    );
  }

  Widget facebookButton(BuildContext context) {
    return Container(
      height: 40.0,
      padding: EdgeInsets.only(right: 15.0, left: 15.0),
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.black,
                style: BorderStyle.solid,
                width: 1.0),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20.0)),
        child: GestureDetector(
          onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: new IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/home');
                    },
                    icon: Icon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.black,
                    )),
              ),
              SizedBox(width: 10.0),
              Center(
                child: Text(
                  'Log in with Facebook',
                  style: TextStyle(
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}