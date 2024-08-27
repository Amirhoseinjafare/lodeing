import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularPercentIndicator(
            animation: true,
            animationDuration: 1000,  
            radius: 150,
            lineWidth: 40,
            percent: 1,
            progressColor: Colors.deepPurple,
            backgroundColor: Colors.deepPurple.shade200,
            circularStrokeCap: CircularStrokeCap.round,
            center: const Text("40%",style: TextStyle(fontSize: 50),),
            
            ),
            LinearPercentIndicator(
              animation: true,
              animationDuration: 1000,
              lineHeight: 20,
              barRadius: const Radius.circular(20),
              percent: 1,
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple[200],
            )
          ],
        ),
      ),),
    );
  }
}