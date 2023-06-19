// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:haindi_graph/common/bottom_bar.dart';
import 'package:haindi_graph/common/custom_button.dart';
import 'package:haindi_graph/constants/global_variables.dart';
import 'package:haindi_graph/screens/top_screen/top_screen.dart';

class GetOtpScreen extends StatefulWidget {
  const GetOtpScreen({super.key});

  @override
  State<GetOtpScreen> createState() => _GetOtpScreenState();
}

class _GetOtpScreenState extends State<GetOtpScreen> {
  Widget buildCircularIcon() {
    return Container(
      width: 60,
      height: 60,
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
          decoration: BoxDecoration(
            border: Border.all(width: .5, color: Colors.grey),
            color: const Color(0x7cdee5e5),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 350,
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
                height: 20,
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
                height: 20,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
