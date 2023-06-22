// ignore_for_file: avoid_unnecessary_containers, unnecessary_const, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../common/custom_textfield.dart';
import '../../constants/global_variables.dart';

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
    return Column(
      children: [
        const Text(
          'Check Delivery Date',
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                controller: _piccodeController,
                hintText: 'Enter Pincode',
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
                onPressed: () {},
                child: const Text('Check'),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              child: Image.network(
                  'https://cdn.dribbble.com/users/129991/screenshots/4233888/media/d822d682119da41d8cca6c6ab623c5b2.png'),
            ),
            const Text('Enter Pincode for Estimated Delivery Date')
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              child: Image.network(
                  'https://cdn.dribbble.com/users/129991/screenshots/4233888/media/d822d682119da41d8cca6c6ab623c5b2.png'),
            ),
            const Text('Dispatch in 2 day')
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.price_check),
                  ),
                ),
              ),
              Container(
                width: 1,
                height: 50,
                color: Colors.black,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.bus_alert_sharp),
                ),
              ),
              Container(
                width: 1,
                height: 50,
                color: Colors.black,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.keyboard_return),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
