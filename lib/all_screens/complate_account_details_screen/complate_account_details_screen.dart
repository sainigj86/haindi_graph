// ignore_for_file: sized_box_for_whitespace, unused_label

import 'package:flutter/material.dart';
import 'package:haindi_graph/all_screens/complate_account_details_screen/bank_details_screen.dart';
import 'package:haindi_graph/all_screens/complate_account_details_screen/pickup_address_screen.dart';
import 'package:haindi_graph/all_screens/complate_account_details_screen/supplier_details_screen.dart';

import '../../constants/global_variables.dart';
import 'gst_details_screen.dart';

class ComplateAccountDetailsScreen extends StatefulWidget {
  const ComplateAccountDetailsScreen({super.key});

  @override
  State<ComplateAccountDetailsScreen> createState() =>
      _ComplateAccountDetailsScreenState();
}

class _ComplateAccountDetailsScreenState
    extends State<ComplateAccountDetailsScreen> {
  int selected = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 1;
                          });
                        },
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey,
                            ),
                            Text('GST'),
                            Text('Details')
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 2;
                          });
                        },
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey,
                            ),
                            Text('Pickup'),
                            Text('Address')
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 3;
                          });
                        },
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey,
                            ),
                            Text('Bank'),
                            Text('Details')
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 4;
                          });
                        },
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey,
                            ),
                            Text('Supplier'),
                            Text('Details'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black)),
                  ),
                ),
                Container(
                  child: selected == 1 ? const GstDetailsScreen() : const SizedBox(),
                ),
                Container(
                  child: selected == 2 ? const PickupAddressScreen() : const SizedBox(),
                ),
                Container(
                  child: selected == 3 ? const BankDetailsScreen() : const SizedBox(),
                ),
                Container(
                  child: selected == 4 ? const SuppliderDetailsScreen() : const SizedBox(),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
