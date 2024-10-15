import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //Titulo
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              clickCounter.toString(),
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text('Click${(clickCounter == 1 || clickCounter == -1) ? '': 's'}',
            style: const TextStyle(fontSize: 25),)
          ],
        )
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              bottom: 15,
            ),
            child: FloatingActionButton(
            onPressed: () {
              setState(() {
                clickCounter= 0;
              });
            },
              child: const Icon(Icons.replay),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 15,
            ),
            child: FloatingActionButton(
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
              child: const Icon(Icons. plus_one),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickCounter--;
              });
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}