import 'package:flutter/material.dart';
import 'package:haindi_graph/common/custom_button.dart';
import 'package:haindi_graph/common/custom_textfield.dart';
import 'package:haindi_graph/constants/global_variables.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _middleNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _mobileNumberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

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
          decoration: BoxDecoration(
            border: Border.all(width: .1, color: Colors.grey),
            color: const Color.fromARGB(123, 220, 223, 223),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  'Hello!',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      shadows: GlobalVariables.textShadow),
                ),
              ),
              const Text(
                'Create your account to start',
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
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
                      onTap: () {},
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
                        buildCircularIcon('assets/images/apple.png'),
                        buildCircularIcon('assets/images/fecbook.png'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Not a member?'),
                        TextButton(
                            onPressed: () {}, child: const Text('Register now'))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
