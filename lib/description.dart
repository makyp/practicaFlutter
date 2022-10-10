// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Description extends StatefulWidget{
  String namePLace;
  int stars;
  String descriptionPlace;
  Description(this.namePLace, this.stars, this.descriptionPlace, {super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final textDescriptive = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right:20.0,
      ),
      child: Text(
        widget.descriptionPlace,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
      ),
    );
    final starHalf = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xff0f2c611),
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xff0f2c611),
      ),
    );
    final starBorder = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xff0f2c611),
      ),
    );
    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),

          child: Text(
            widget.namePLace,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            starHalf,
            starBorder,

          ],

        )
      ]
    );
    return Column(
      children: <Widget>[
        titleStars,
        textDescriptive,
      ],
    );
  }
}