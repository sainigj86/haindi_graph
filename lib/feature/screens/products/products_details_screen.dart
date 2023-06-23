// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:haindi_graph/common/custom_button.dart';
import 'package:haindi_graph/constants/global_variables.dart';
import 'package:haindi_graph/feature/screens/products/product_check_delevery_date.dart';

import '../../../common/custom_textfield.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  TextEditingController _piccodeController = TextEditingController();

  List lists = [
    {
      'image':
          'https://assets0.mirraw.com/images/7571014/HPMR14030_zoom.jpg?1574321775',
    },
    {
      'image':
          'https://assets0.mirraw.com/images/7571014/HPMR14030_zoom.jpg?1574321775',
    },
    {
      'image':
          'https://assets0.mirraw.com/images/7571014/HPMR14030_zoom.jpg?1574321775',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {},
            ),
            Row(
              children: const [
                Icon(Icons.search),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.card_travel)
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.arrow_back_ios_new_outlined,
                      ),
                      Expanded(
                        child: Image.network(
                            'https://img1.exportersindia.com/product_images/bc-full/dir_59/1756663/marbal-handicraft-items-373776.jpg'),
                      ),
                      Column(
                        children: const [
                          Icon(Icons.share),
                          Text(
                            'Share',
                            style: TextStyle(fontSize: 11),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("SHIKHA HANDICRAFT Marble Flower"),
                      Text("Vase Showpiece for Home Decoration"),
                      Text("(7.5x7.5x15 cm) 6 Inch Stoneware Vase"),
                      Text("(6 inch, Multicolor)"),
                    ],
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '₹470',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 20,
                        width: 40,
                        decoration: BoxDecoration(
                          color: GlobalVariables.greendarkColor,
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: const Center(
                          child: Text(
                            '3.9 *',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Free Delivery'),
                      Text('(2,704) ratings'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: lists.length,
                        // itemExtent: 111,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 90,
                            // height: 110,
                            margin: const EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                              border: Border.all(width: 5, color: Colors.grey),
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Image.network(
                              lists[index]['image'],
                              height: 80,
                              width: 80,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.arrow_back_ios_new_outlined,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Product Specifications',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text('Brand: SHIKHA HANDICRAFT'),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                      'Model Number: Designer Decorative Marble Flower Vase | Round Shape Flower Design Showpiece Vases for Home Decoration (Multicolor, 7.5x7.5x15 cm) 6 Inch'),
                  const Text(
                      'Model Name: Marble Flower Vase Showpiece for Home Decoration (7.5x7.5x15 cm) 6 Inch'),
                  const Text('Material: Stoneware'),
                  const Text('Suitable For: Floor'),
                  const Text('Colour: multicolour'),
                  const Text('Shape: Rounded'),
                  const Text('Pattern: Flower Design'),
                  const Text('Width: 3 inch'),
                  const Text('Height: 6 inch'),
                  const Text('Depth: 3 inch'),
                  const Text('Other Dimensions: 7.5x7.5x15 cm'),
                  const SizedBox(
                    height: 25,
                  ),
                  const CheckDeliveryDateScreen(),
                  const SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 4, color: GlobalVariables.greendarkColor),
                        color: const Color(0xffeff1f5),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'add to Cart',
                              style: TextStyle(
                                fontSize: 20,
                                shadows: GlobalVariables.textShadow,
                              ),
                            ),
                          ),
                          Container(
                              width: 4,
                              height: double.infinity,
                              color: GlobalVariables.greendarkColor),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'Buy Now',
                              style: TextStyle(
                                fontSize: 20,
                                shadows: GlobalVariables.textShadow,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
