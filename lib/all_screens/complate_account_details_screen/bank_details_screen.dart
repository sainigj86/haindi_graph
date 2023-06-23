import 'package:flutter/material.dart';

import '../../common/custom_textfield.dart';

class BankDetailsScreen extends StatefulWidget {
  const BankDetailsScreen({super.key});

  @override
  State<BankDetailsScreen> createState() => _BankDetailsScreenState();
}

class _BankDetailsScreenState extends State<BankDetailsScreen> {
  TextEditingController _accountNumberController = TextEditingController();
  TextEditingController _confirmAccountNumberController =
      TextEditingController();
  TextEditingController _ifscCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.grey,
                          width: double.infinity,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                                'Bank account should be in the name of regis- tered business name or trade name as per GSTIN.'),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          CustomTextField(
              controller: _accountNumberController, hintText: 'Account Number'),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
              controller: _confirmAccountNumberController,
              hintText: 'Confirm Account Number'),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
              controller: _ifscCodeController, hintText: 'IFSC Code'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text('Dont remember IFSC Code?'),
                TextButton(
                  onPressed: () {},
                  child: const Text('Find IFSC Code'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
