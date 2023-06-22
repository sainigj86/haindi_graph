import 'package:flutter/material.dart';

import '../constants/global_variables.dart';
import 'package:auto_size_text/auto_size_text.dart';

class BuyAllItemes extends StatelessWidget {
  const BuyAllItemes({super.key});

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
                    child: Text('Items added to Cart'),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 1, color: GlobalVariables.greendarkColor),
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(1),
                            child: Expanded(
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
                                          color: Color.fromARGB(
                                              255, 246, 241, 241),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'SHIKHA HANDICRAFT\nMarbleFlower Vase',
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
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 231, 224, 224),
                                    border: Border.all(
                                        width: 3,
                                        color: GlobalVariables.greendarkColor),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(25),
                                      bottomRight: Radius.circular(25),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text('Remove'),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: GlobalVariables.greendarkColor,
                                    border: Border.all(
                                        width: 3,
                                        color: GlobalVariables.greendarkColor),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(25),
                                      bottomRight: Radius.circular(25),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text('Buy Now'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text('See more')
                        ],
                      ),
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
                    'Buy All Items',
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
