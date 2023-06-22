// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

// String uri = 'https://wicked-underwear-pike.cyclic.app';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const greendarkColor = Color.fromARGB(255, 75, 119, 68);
  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;

  static const TextStyle fontwait = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const List<Shadow> textShadow = [
    Shadow(
      offset: Offset(0.4, 0.4),
      blurRadius: 1.0,
      color: Colors.black,
    ),
  ];

  static const TextStyle Textbold = TextStyle(
    fontWeight: FontWeight.bold,
  );
}
