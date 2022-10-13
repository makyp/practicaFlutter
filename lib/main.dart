import 'package:flutter/material.dart';

import 'proyecto_trips.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

           primarySwatch: Colors.blue,
    ),
          home: ProyectoTrips()
    );
  }
}
