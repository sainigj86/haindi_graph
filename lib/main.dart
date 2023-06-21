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
        appBarTheme: const AppBarTheme(
            // color: Color.fromARGB(255, 171, 204, 166),
            color: Color.fromARGB(255, 233, 232, 232)),
      ),
      home: const LoginAndRegisterButton(),
    );
  }
}
