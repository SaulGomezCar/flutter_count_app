

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const fuenteSize = TextStyle(fontSize: 30);

    return Scaffold(

      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 0,
        centerTitle: true,
      ),

      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text('Clicks counter', style: fuenteSize),
            Text('0', style: fuenteSize),
            ]
        ),
      ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print('Hola Mundo');
          },
      ),
    );
  }

}