import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //Titulo
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '10',
              style: TextStyle(fontSize: 130, fontWeight: FontWeight.w100),
            ),
            Text('Clicks',
            style: TextStyle(fontSize: 25),)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red.shade300,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CounterScreen()));
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}