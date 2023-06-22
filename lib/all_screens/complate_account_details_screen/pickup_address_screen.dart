import 'package:flutter/material.dart';

class PickupAddressScreen extends StatefulWidget {
  const PickupAddressScreen({super.key});

  @override
  State<PickupAddressScreen> createState() => _PickupAddressScreenState();
}

class _PickupAddressScreenState extends State<PickupAddressScreen> {
  @override
  bool _isChecked = false;

  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            // Expanded(
            //   child: Checkbox(
            //     value: _isChecked,
            //     onChanged: (bool? value) {
            //       setState(
            //         () {
            //           _isChecked = value!;
            //         },
            //       );
            //     },
            //   ),
            // ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.grey,
                  width: double.infinity,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('product will be picked up from this\nlocation for delivery'),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
