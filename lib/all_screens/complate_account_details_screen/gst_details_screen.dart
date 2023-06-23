// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../common/custom_textfield.dart';
import '../../constants/global_variables.dart';

class GstDetailsScreen extends StatefulWidget {
  const GstDetailsScreen({super.key});

  @override
  State<GstDetailsScreen> createState() => _GstDetailsScreenState();
}

class _GstDetailsScreenState extends State<GstDetailsScreen> {
  TextEditingController _enterGstinController = TextEditingController();

  bool _isDetailsVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'GST number is required to sell on Yamart',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const Text(
              'Because the Government needs all suppliers toeir GST number to sell online.'),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  controller: _enterGstinController,
                  hintText: 'Enter GSTin',
                ),
              ),
              const SizedBox(
                width: 11,
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 100),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        GlobalVariables.greendarkColor),
                    minimumSize:
                        MaterialStateProperty.all<Size>(const Size(100, 47)),
                  ),
                  onPressed: () {
                    setState(() {
                      _isDetailsVisible = true;
                    });
                  },
                  child: const Text('Verify'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Visibility(
            visible: _isDetailsVisible,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 1,
                  height: 270,
                  color: GlobalVariables.greendarkColor,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('GSTIN'),
                    Text(
                      '27AAJCA4788P1ZR',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Business Name'),
                    Text(
                      'ATS CARGO PRIVATE LIMITED',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('PAN Number'),
                    Text(
                      'AAJCA4788P',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Business Type'),
                    Text(
                      'Service Provision',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Registered Business Address'),
                    Container(
                      child: Text(
                        '208, 2ND FLOOR, AVOIR\nNIRMAL GALAXY, MULUND\nWLBS MARG, Pincode - \n400080, Mumbai Suburban, Maharashtra',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
