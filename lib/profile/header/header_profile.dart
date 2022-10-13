import 'package:flutter/material.dart';
import 'user_info.dart';
import 'buttons_bar.dart';

class HeaderProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final title = Text(
      'Profile',
      style: TextStyle(
          fontFamily: 'Lato',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0
      ),
    );

    return Container(
      margin: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 50.0
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              title
            ],
          ),
          UserInfo('assets/img/people3.png', 'Gissele Thomas','hernan@mail.com'),
          ButtonsBar()
        ],
      ),
    );
  }

}