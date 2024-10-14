import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //Titulo
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter screen'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '10',
              style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text('Clicks',
            style: TextStyle(fontSize: 25),)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CounterScreen()));
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}