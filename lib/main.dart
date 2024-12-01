import 'package:flutter/material.dart';
import 'package:lab1/screens/home_screen.dart';
import 'package:lab1/screens/clothes_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '213213',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => const Home(),
        '/details' : (context) => const Details(),
      },
    );
  }
}


