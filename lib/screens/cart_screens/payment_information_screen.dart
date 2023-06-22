// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

import '../../constants/global_variables.dart';

class PaymentInformatinScreen extends StatelessWidget {
  const PaymentInformatinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Payment Information',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 1, color: GlobalVariables.greendarkColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Payment Method',
                      style: GlobalVariables.Textbold,
                    ),
                    Text('Debit Card'),
                  ],
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Shipping/Bulling Address',
                      style: GlobalVariables.Textbold,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                        'Pawan Kumar\n8/41 Chitrakoot Near SBI Bank Vashali Nagar,\nJaipur\nRajasthan\n302021 India'),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 1, color: GlobalVariables.greendarkColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Product Information'),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Items:'),
                    Text('₹ 330. 00'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Postage & Packing:'),
                    Text('₹ 00'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Total before Tex:'),
                    Text('₹ 00'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Tax:'),
                    Text('₹ 00'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Total:'),
                    Text('₹ 330. 00'),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
