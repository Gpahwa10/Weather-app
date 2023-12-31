import 'package:flutter/material.dart';
import 'screens/loading_screen.dart';
void main(){
  runApp(const Weather());
}

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const LoadingPage(),
    );
  }
}

