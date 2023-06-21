// ignore_for_file: avoid_unnecessary_containers, unnecessary_const, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:haindi_graph/common/custom_button.dart';
import 'package:haindi_graph/common/custom_textfield.dart';

class CheckDeliveryDateScreen extends StatefulWidget {
  const CheckDeliveryDateScreen({super.key});

  @override
  State<CheckDeliveryDateScreen> createState() =>
      _CheckDeliveryDateScreenState();
}

class _CheckDeliveryDateScreenState extends State<CheckDeliveryDateScreen> {
  TextEditingController _piccodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Check Delivery Date',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 25,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              CustomTextField(
                  controller: _piccodeController, hintText: 'Enter Pincode'),
            ],
          )
        ],
      ),
    );
  }
}
