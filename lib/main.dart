import 'package:flutter/material.dart';
import 'package:perhitungan_bangun_datar_luas_bangun_datar/formRegistration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'perhitungan bangun datar luas bangun datar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const kalkulator(),
    );
  }
}
