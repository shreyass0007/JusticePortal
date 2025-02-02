import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(PoliceReportsApp());
}

class PoliceReportsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Police Reports App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
