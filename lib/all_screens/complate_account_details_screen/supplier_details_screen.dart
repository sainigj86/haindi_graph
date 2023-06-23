import 'package:flutter/material.dart';

import '../../common/custom_textfield.dart';

class SuppliderDetailsScreen extends StatefulWidget {
  const SuppliderDetailsScreen({super.key});

  @override
  State<SuppliderDetailsScreen> createState() => _SuppliderDetailsScreenState();
}

class _SuppliderDetailsScreenState extends State<SuppliderDetailsScreen> {
  TextEditingController _StoreNameController = TextEditingController();
  TextEditingController _yourFullNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
                                    'Store Name” is visible on the Yamart reseller app with your listed products'),
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
                  controller: _StoreNameController, hintText: 'Store Name'),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                  controller: _yourFullNameController,
                  hintText: 'Your Full Name'),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
          Row(
            children: [
              const Text('Dont remember IFSC Code?'),
              TextButton(
                onPressed: () {},
                child: const Text('Find IFSC Code'),
              ),
            ],
          )
        ],
      ),
    );
  }
}


// Row(
//             children: [
//               const Text('Dont remember IFSC Code?'),
//               TextButton(
//                 onPressed: () {},
//                 child: const Text('Find IFSC Code'),
//               ),
//             ],
//           )