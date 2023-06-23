// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:haindi_graph/constants/global_variables.dart';
import 'package:haindi_graph/screens/cart_screens/payment_information_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   width: double.infinity,
                //   height: 3,
                //   color: Colors.grey,
                // ),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          offset: Offset(0, 2))
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.check_box),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Order placed, thank you!',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 15),
                            )
                          ],
                        ),
                        Text('Confirmation will be sent to your email.')
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                'Shipping to Pawan kumar, 8/41\nChitrakoot\nNear SBI Bank Vashali Nagar, Jaipur\nphone number: 1234564321'),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 200,
                              height: 1,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              height: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Wednesday, 28 Dec',
                                      style: GlobalVariables.Textbold,
                                    ),
                                    Text('Estimated'),
                                    Text('delivery'),
                                  ],
                                ),
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
                                        color:
                                            Color.fromARGB(255, 246, 241, 241),
                                        blurRadius: 1,
                                        offset: Offset(1, 1),
                                      )
                                    ],
                                  ),
                                  child: Image.network(
                                      'https://img1.exportersindia.com/product_images/bc-full/dir_59/1756663/marbal-handicraft-items-373776.jpg'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Shipping Details'),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text('Not yet dispatched'),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text('Estimate delivery:'),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Wednesday, 28 Descember, 2022',
                              style: TextStyle(color: Colors.green),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
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
                                        color:
                                            Color.fromARGB(255, 246, 241, 241),
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
                                    Text('Marble Flower Vase'),
                                    SizedBox(height: 8),
                                    Text('₹ 47,4348'),
                                    SizedBox(height: 8),
                                    Text('Qty: 1'),
                                    SizedBox(height: 8),
                                    Text('(3,434) ratings'),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const PaymentInformatinScreen(),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(
                          width: 3, color: GlobalVariables.greendarkColor),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                    child: const Center(
                      child: Text('Cancel Order'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
