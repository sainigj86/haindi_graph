import 'package:flutter/material.dart';
import 'package:haindi_graph/constants/global_variables.dart';
import 'package:haindi_graph/screens/login/login_screen.dart';
import 'package:haindi_graph/screens/register/register_screen.dart';

class LoginAndRegisterButton extends StatelessWidget {
  const LoginAndRegisterButton({super.key});

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  child: Image.network('https://listimg.pinclipart.com/picdir/s/395-3957770_3582869de9a2412793e6-online-shopping-icon-png-clipart.png'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'WELCOME',
                style: TextStyle(
                  fontSize: 30,
                  shadows: GlobalVariables.textShadow,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              const Text(
                'Explore all the most exiting Handicraft',
                style: TextStyle(fontSize: 18),
              ),
              const Text(
                'Product based on your interest and needs.',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: double.infinity,
                  height: 111,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 4, color: GlobalVariables.greendarkColor),
                    color: const Color(0xffeff1f5),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen()));
                        },
                        child: const Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 25,
                            shadows: GlobalVariables.textShadow,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 25,
                            shadows: GlobalVariables.textShadow,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
