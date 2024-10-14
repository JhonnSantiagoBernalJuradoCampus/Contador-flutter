import 'package:flutter/material.dart';
import 'package:flutter_1/presentation/screens/counter/counter_screen.dart';

void main(){
  runApp(const MyApp());
  
  
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CounterScreen(),
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true
      ),
    );
  }
}