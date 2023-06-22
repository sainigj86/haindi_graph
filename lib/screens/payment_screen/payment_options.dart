// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../constants/global_variables.dart';

class PaymentOptionScreen extends StatelessWidget {
  const PaymentOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(11),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Payment Options:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 0.5, color: GlobalVariables.greendarkColor),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: GlobalVariables.greendarkColor,
                        blurRadius: 1,
                        offset: Offset(1, 1),
                      )
                    ],
                  ),
                  child: const Center(
                    child: Text('Other UPI IDs/Net Banking'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 0.5, color: GlobalVariables.greendarkColor),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: GlobalVariables.greendarkColor,
                        blurRadius: 1,
                        offset: Offset(1, 1),
                      )
                    ],
                  ),
                  child: const Center(
                    child: Text('Debit/Credit/ATM Card'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 0.5, color: GlobalVariables.greendarkColor),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: GlobalVariables.greendarkColor,
                        blurRadius: 1,
                        offset: Offset(1, 1),
                      )
                    ],
                  ),
                  child: const Center(
                    child: Text('EMI/Net Banking'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 0.5, color: GlobalVariables.greendarkColor),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: GlobalVariables.greendarkColor,
                        blurRadius: 1,
                        offset: Offset(1, 1),
                      )
                    ],
                  ),
                  child: const Center(
                    child: Text('Pay on Delivery'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 0.5, color: GlobalVariables.greendarkColor),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: GlobalVariables.greendarkColor,
                        blurRadius: 1,
                        offset: Offset(1, 1),
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.add),
                      Text('Add Gift Card'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                    color: GlobalVariables.greendarkColor,
                    border: Border.all(
                        width: 3, color: GlobalVariables.greendarkColor),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Coutinue',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
