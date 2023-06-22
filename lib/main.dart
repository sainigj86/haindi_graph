import 'package:flutter/material.dart';
import 'package:haindi_graph/common/bottom_bar.dart';
import 'package:haindi_graph/screens/login_and_register_button/login_register_button.dart';
import 'package:haindi_graph/screens/payment_screen/payment_options.dart';

import 'all_screens/buy_all_items.dart';
import 'all_screens/cancel_product.dart';
import 'all_screens/complate_account_details_screen/complate_account_details_screen.dart';
import 'all_screens/delivery_address.dart';
import 'all_screens/return.dart';
import 'all_screens/return_product.dart';
import 'all_screens/start_selling.dart';

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
      home: const ComplateAccountDetailsScreen(),
    );
  }
}
