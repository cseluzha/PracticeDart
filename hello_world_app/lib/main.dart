import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_fuctions_screen.dart';

void main() {
  // The init widget - like component or screen on React Native
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
      ),
      home: const CounterFunctionsScreen()
    );
  }
}