import 'package:flutter/material.dart';
import 'package:visualstudio_test/test/Adzuna.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'food recipe',
      theme: ThemeData(
          primaryColor: Colors.white,
          useMaterial3: true,
          textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white))),
      home: const AdzunaApp(),
    );
  }
}
