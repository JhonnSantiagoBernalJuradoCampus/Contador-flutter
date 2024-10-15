import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //Titulo
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter functions'),
        actions: <Widget>[
          IconButton(
            color: Colors.blue,
            icon: const Icon(Icons.refresh_rounded), 
            onPressed: (){
              setState(() {
                clickCounter = 0;
              });
            }
          ),
        ],
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
      floatingActionButton: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          
          CustomBotton(
            icon: Icons.refresh_rounded,
          ),

          SizedBox(height: 10,),

          CustomBotton(
            icon: Icons.plus_one,
          ),

          SizedBox(height: 10,),


          CustomBotton(
            icon: Icons.exposure_minus_1_outlined,
          ),
        ],
      ),
    );
  }
}

class CustomBotton extends StatelessWidget {
  final IconData icon;
  final Function? onPressed;
  const CustomBotton({
    super.key, 
    required this.icon, 
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      onPressed: () {
        
      },
      child: Icon(icon),
    );
  }
}