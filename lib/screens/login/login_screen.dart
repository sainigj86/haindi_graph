// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:haindi_graph/common/custom_button.dart';
import 'package:haindi_graph/common/custom_textfield.dart';
import 'package:haindi_graph/screens/login/get_otp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _mobileNumberController = TextEditingController();

  Widget buildCircularIcon(String imagePath) {
    return Container(
      width: 60,
      height: 60,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      child: Image.asset(
        imagePath,
        fit: BoxFit.contain,
      ),
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
                  padding: const EdgeInsets.all(60.0),
                  child: Container(
                    width: double.infinity,
                    // height: 350,
                    child: Image.network(
                        'https://cdn0.iconfinder.com/data/icons/mobile-functions-colored-outlined-pixel-perfect/64/mobile-28-512.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      CustomTextField(
                          controller: _mobileNumberController,
                          hintText: 'Enter mobile number'),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        child: CustomButton(
                          text: 'Send OTP',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const GetOtpScreen()));
                          },
                          maxHeight: 80,
                          borderRadius: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Or continue with',
                        style: TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildCircularIcon('assets/images/google.png'),
                          const SizedBox(
                            width: 25,
                          ),
                          buildCircularIcon('assets/images/apple.png'),
                          const SizedBox(
                            width: 25,
                          ),
                          buildCircularIcon('assets/images/fecbook.png'),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
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
