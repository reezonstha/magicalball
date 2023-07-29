import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MagicBall());
}

class MagicBall extends StatelessWidget {
  const MagicBall({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int num = 1;
  var ChangeImage = 'assets/ball1.png';
  void change(){
    setState(() {
      int num = Random().nextInt(5)+1;
      ChangeImage = 'assets/ball$num.png';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Magic Ball'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    child: Text('Do You Love Me?', style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red,
                    ),),
                  ),
                ],
              ),
            ),
            Image.asset(ChangeImage),
            GestureDetector(
              onTap: change,
              child: Container(
                height: 50,
                width: 100,
                color: Colors.red,
                child: Center(child: Text('Ask')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}