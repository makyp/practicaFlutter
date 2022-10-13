import 'package:flutter/material.dart';
import 'home_trip.dart';
import 'search_trips.dart';
import 'package:proyecto1/profile/profile_trips.dart';

class ProyectoTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _ProyectoTrips();
  }

}

class _ProyectoTrips extends State<ProyectoTrips>{
  int indexTap=0;//Declaramos e incializamos nuestro indice para la navegacion
  final List<Widget> widgetsChildren =[// Dentro van la cantidad de vistas que se van mostrando
    HomeTrip(),
    SearchTrips(),
    ProfileTrips(),

  ];
  void onTapTapped(int index){//Recibe el numero del indice recordemos que va de 0 hasta n-1
    setState(() {//Llama la funcionalidad del estado del widget
      indexTap=index;
    });


  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //Para la navegacion

    return Scaffold(
      body: widgetsChildren[indexTap],//Se colocaran los taps que se desean
      bottomNavigationBar: Theme(
        //Personalizacion
        data: Theme.of(context).copyWith(//Para colorear la barra
          canvasColor: Colors.white,
          primaryColor: Colors.purple //Este es el color que queremos para los iconos cuando se seleccionen

        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onTapTapped,//Que sucede cuando alguien le de tap
          currentIndex: indexTap,//Indicar que el indice que se aprege sea el ingresado
          items: [ //Dentro se colocan los taps que tenga nuestro bottonNavigation
            BottomNavigationBarItem(
                icon: Icon(Icons.home), //Home es un icono por defecto que nos proporcionan
                label: (" "),//Titulo de la seccion, si no tiene en blanco
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.search), //Home es un icono por defecto que nos proporcionan
              label: (" "),//Titulo de la seccion, si no tiene en blanco
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person), //Home es un icono por defecto que nos proporcionan
              label: (" "),//Titulo de la seccion, si no tiene en blanco
            ),

          ],
        ),
      ),
    );
  }
  
}