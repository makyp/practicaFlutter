import 'package:flutter/material.dart';
import 'place.dart';
import 'package:proyecto1/place.dart';

class PlacesList extends StatelessWidget {

  InfoPlace info = new InfoPlace('Ciudad de Buenos Aires', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '123,123,123');
  InfoPlace info2 = new InfoPlace('Las Palmeras', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '321,321,321');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0,
          bottom: 10.0
      ),
      child: Column(
        children: <Widget>[
          Place('assets/img/Pueblo3.jpg', info),
          Place('assets/img/Pueblo2.jpg', info2),
        ],
      ),
    );
  }

}