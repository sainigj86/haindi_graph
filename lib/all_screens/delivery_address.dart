import 'package:flutter/material.dart';
import 'package:haindi_graph/constants/global_variables.dart';

class DeliveryAddressScreen extends StatelessWidget {
  const DeliveryAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(11),
              child: Text(
                'Select a delivery address',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border.all(width: 1, color: GlobalVariables.greendarkColor),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text('RECENTLY USED'),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                            'Pawan Kumar 8/41 Chitrakoot Near SBI Bank Vashali Nagar, Jaipur'),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            '8/41 Chitrakoot Near SBI Bank Vashali Nagar, Jaipur Rajasthan 302021 India'),
                        Text('Phone number: 1234564321')
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(11),
              child: Container(
                width: double.infinity,
                height: 50,
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
                    'Delivery to this address',
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
