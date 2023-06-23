// ignore_for_file: avoid_print, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:haindi_graph/common/custom_button.dart';
import 'package:haindi_graph/common/custom_textfield.dart';
import 'package:haindi_graph/constants/global_variables.dart';
import 'package:haindi_graph/feature/screens/login/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _signUpFormKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

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
  register() {
    var _firstName = _firstNameController.text.trim();
    var _middleName = _middleNameController.text.trim();
    var _lastName = _lastNameController.text.trim();
    var _mobileNumber = _mobileNumberController.text.trim();
    var _email = _emailController.text.trim();

    print(
        "FirstName ${_firstName}, MiddleName ${_middleName}, LastName ${_lastName}, MobileNumber ${_mobileNumber}, Email ${_email}, ");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(width: .1, color: Colors.grey),
            color: const Color.fromARGB(123, 220, 223, 223),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Column(
                children: [
                  const Text(
                    'Hello!',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        shadows: GlobalVariables.textShadow),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  const Text(
                    'Create your account to start',
                    style: TextStyle(fontSize: 17),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Form(
                    key: _signUpFormKey,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  controller: _firstNameController,
                                  hintText: 'First Name',
                                ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: CustomTextField(
                                  controller: _middleNameController,
                                  hintText: 'Middle Name',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                            controller: _lastNameController,
                            hintText: 'Last Name',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                            controller: _mobileNumberController,
                            hintText: 'Mobile number',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                            controller: _emailController,
                            hintText: 'Email address',
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomButton(
                            text: 'Sign up',
                            onTap: () {
                              if (_signUpFormKey.currentState!.validate()) {
                                register();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                );
                              }
                            },
                            maxHeight: 80,
                            borderRadius: 10,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Not a member?'),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen(),
                                      ),
                                    );
                                  },
                                  child: const Text('Sign In'))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
