import 'package:bitaqwa_2/presentation/screens/dashboard.dart';
import 'package:bitaqwa_2/presentation/screens/doa_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => DashboardScreen(),
        'doa': (context) => DoaScreen(),
      },
    );
  }
}
