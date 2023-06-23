// ignore_for_file: annotate_overrides

import 'package:flutter/material.dart';
import 'package:haindi_graph/common/custom_textfield.dart';

class PickupAddressScreen extends StatefulWidget {
  const PickupAddressScreen({super.key});

  @override
  State<PickupAddressScreen> createState() => _PickupAddressScreenState();
}

class _PickupAddressScreenState extends State<PickupAddressScreen> {
  TextEditingController _roomController = TextEditingController();
  TextEditingController _localityController = TextEditingController();
  TextEditingController _pincodeController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _stateController = TextEditingController();
  @override
  bool _isChecked = false;

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
                                'product will be picked up from this\nlocation for delivery'),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(
                          () {
                            _isChecked = value!;
                          },
                        );
                      },
                    ),
                    const Text('Use address registered on GST')
                  ],
                ),
              ],
            ),
          ),
          CustomTextField(
              controller: _roomController,
              hintText: 'Room/ Floor/ Building Number'),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
              controller: _pincodeController,
              hintText: 'Street/ Locality/ Landmark'),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                    controller: _pincodeController, hintText: 'Pincode'),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: CustomTextField(
                    controller: _cityController, hintText: 'City'),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(controller: _stateController, hintText: 'State'),
        ],
      ),
    );
  }
}
