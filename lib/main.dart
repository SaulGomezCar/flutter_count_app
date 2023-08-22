import 'package:counter_app/screens/counter_screen.dart';
//import 'package:counter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';


void main(List<String> args) { // Ejecuta el código (runApp instancia MyApp)
  runApp(const MyApp());
}

//Se crea el Widget Stateless (necesita extender de StatelessWidget para no ser una clase)
class MyApp extends StatelessWidget{
  const MyApp({super.key}); //Constructor constante

  @override
  //Build necesita retornar Widget
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //elimina la etiqueta de Debug
      //home: HomeScreen()
      home: CounterScreen()
    );
  }

}