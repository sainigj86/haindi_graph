// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants/global_variables.dart';

class StartSellingScreen extends StatefulWidget {
  const StartSellingScreen({super.key});

  @override
  State<StartSellingScreen> createState() => _StartSellingScreenState();
}

class _StartSellingScreenState extends State<StartSellingScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color.fromARGB(255, 125, 176, 127),
                            width: 1),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 37, 104, 39),
                            blurRadius: .7,
                            offset: Offset(0, 0),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Create supplier account',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Sell your product to create of buyers')
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 0.5,
                                  color: GlobalVariables.greendarkColor),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                  color: GlobalVariables.greendarkColor,
                                  blurRadius: 1,
                                  offset: Offset(1, 1),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Mobile Number'),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 0.5,
                                  color: GlobalVariables.greendarkColor),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                  color: GlobalVariables.greendarkColor,
                                  blurRadius: 1,
                                  offset: Offset(1, 1),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Email Id'),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 0.5,
                                  color: GlobalVariables.greendarkColor),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                  color: GlobalVariables.greendarkColor,
                                  blurRadius: 1,
                                  offset: Offset(1, 1),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Set Password'),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Make your password strong by adding:',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Minimum 8 characters (letter & numbers'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Minimum 1 special (@ #  ^ & *)'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Minimum 1 capital letter (A-Z)s'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Minimum 1 number (0-9)'),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: _isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked = value!;
                                  });
                                },
                              ),
                              Text('Receive important updates on'),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
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
                      'Start selling',
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
