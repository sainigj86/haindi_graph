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
                  onPressed: () {},
                  child: const Text('Verify'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
