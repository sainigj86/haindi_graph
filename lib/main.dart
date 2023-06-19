import 'package:flutter/material.dart';
import 'package:haindi_graph/common/bottom_bar.dart';
import 'package:haindi_graph/screens/login_and_register_button/login_register_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const BottomNavigationScreen(),
    );
  }
}
