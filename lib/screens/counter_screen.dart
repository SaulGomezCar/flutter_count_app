

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;


  void increase (){
    counter++;
    setState(() {});
  }

  void decrease (){
    counter--;
    setState(() {});
  }
  
  void restart (){
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    const fuenteSize = TextStyle(fontSize: 30);

    return Scaffold(

      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 0,
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text('Clicks counter', style: fuenteSize),
            Text('$counter', style: fuenteSize),
            ]
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase, 
        decreaseFn: decrease, 
        restartFn: restart,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function restartFn;

  const CustomFloatingActions({
    Key? key, 
    required this.increaseFn, 
    required this.decreaseFn, 
    required this.restartFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () => decreaseFn(),
        ),

        FloatingActionButton(
          child: const Icon(Icons.restart_alt),
          onPressed: () => restartFn(),
        ),

        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => increaseFn(),
        )
      ],
    );
  }
}