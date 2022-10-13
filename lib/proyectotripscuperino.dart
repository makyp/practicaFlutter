import 'dart:ui';

import 'package:flutter/material.dart';
import 'home_trip.dart';
import 'search_trips.dart';
import 'profile/profile_trips.dart';
import 'package:flutter/cupertino.dart';//Para importar propiedades de Cupertino
class ProyectoTripsCupertino extends StatelessWidget{
  int index =0;
  @override
  void detalles (){

  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home,color: Colors.indigo),
                    label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search,color: Colors.indigo),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person,color: Colors.indigo),
                  label: "",
                ),
              ],
          ), tabBuilder: (BuildContext context, int index) {
            return CupertinoTabView(
             /* builder: (BuildContext contex){
                switch(index){
                  case 0:
                  return CupertinoTabView(
                  builder: (BuildContext context) => HomeTrip(),);
                  break;
                  case 1:
                  return CupertinoTabView(
                  builder: (BuildContext context) => SearchTrips(),);
                  break;
                  case 2:
                  return CupertinoTabView(
                  builder: (BuildContext context) => ProfileTrips());
                  break;
              }
              }*/
            );

      },

      ),
    );
  }
}