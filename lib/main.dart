import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica',
      theme: ThemeData(

        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Share'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  String descriptionDummy ="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

           primarySwatch: Colors.blue,
    ),
          home: Scaffold(
            //body: new DescriptionPlace("Bahamas", 4, descriptionDummy),
            body: Stack(
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    DescriptionPlace("Bahamas", 4, descriptionDummy),
                    ReviewList()

                ],
            ),
            HeaderAppBar()
          ],
        ),
       )
    );//MyHomePage(title: 'Flutter Demo Home Page'),
  }
}
