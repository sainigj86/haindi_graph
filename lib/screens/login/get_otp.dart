// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:haindi_graph/common/bottom_bar.dart';
import 'package:haindi_graph/common/custom_button.dart';
import 'package:haindi_graph/constants/global_variables.dart';

class GetOtpScreen extends StatefulWidget {
  const GetOtpScreen({super.key});

  @override
  State<GetOtpScreen> createState() => _GetOtpScreenState();
}

class _GetOtpScreenState extends State<GetOtpScreen> {
  Widget buildCircularIcon() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border:
            Border.all(width: 1, color: Colors.grey), // Add border properties
      ),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(width: .5, color: Colors.grey),
            color: const Color(0x7cdee5e5),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    width: double.infinity,
                    child: Image.network(
                        'https://www.shareicon.net/data/128x128/2015/12/23/691751_password_512x512.png'),
                  ),
                ),
                const Text(
                  'Enter OTP',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    shadows: GlobalVariables.textShadow,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildCircularIcon(),
                    buildCircularIcon(),
                    buildCircularIcon(),
                    buildCircularIcon(),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: CustomButton(
                    text: 'Get Start',
                    borderRadius: 10,
                    maxHeight: 80,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavigationScreen(),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 120,
                ),
                Container(
                  height: 4,
                  width: 200,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
