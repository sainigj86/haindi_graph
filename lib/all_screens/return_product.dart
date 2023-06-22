// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../constants/global_variables.dart';

class ReturnProductScreen extends StatelessWidget {
  const ReturnProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Items Delivered',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 1, color: GlobalVariables.greendarkColor),
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text('Item Delivered:'),
                        ),
                        Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.grey,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Monday, 28 September, 2022',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 4,
                                    color: const Color.fromARGB(
                                        255, 237, 232, 232),
                                  ),
                                  borderRadius: BorderRadius.circular(11),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 246, 241, 241),
                                      blurRadius: 1,
                                      offset: Offset(1, 1),
                                    )
                                  ],
                                ),
                                child: Image.network(
                                    'https://img1.exportersindia.com/product_images/bc-full/dir_59/1756663/marbal-handicraft-items-373776.jpg'),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Marble Floawer Vase',
                                  ),
                                  SizedBox(height: 8),
                                  Text('₹ 470.00'),
                                  SizedBox(height: 8),
                                  Text('Qty: 1'),
                                  SizedBox(height: 8),
                                  Text('(3,434) ratings'),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
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
                    'Return Product',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
