import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nicemenu/screens/home_screen/home_screen.dart';

import '../../utils/const_text.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/textfield.dart';
import '../signup/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  List<String> items = [
    "Home",
    "Explore",
  ];

  /// List of body icon
  List<IconData> icons = [
    Icons.home,
    Icons.explore,
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          clipBehavior: Clip.none,
          child: ListView(children: [
            const Gap(50),
            const BigText(bigText: 'Login'),
            const Gap(5),
            const SmallText2(smallText2: 'We are glad you came back 😘'),
            const Gap(30),
            Column(
              children: [
                const FieldText(midText: 'Email'),
                const Gap(5),
                const EmailField(),
                const Gap(15),
                const PasswordWrite(),
                const Gap(5),
                const PasswordField(),
                const Gap(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const SmallText(
                          smallText: 'Forgot Password?',
                          color: Colors.blue,
                        )),
                  ],
                ),
                const Gap(20),
                ButtonWidget1(
                  buttonText: 'Login',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Gap(20),
                    const SmallText(smallText: 'Dont have an account?'),
                    const Gap(5),
                    // ButtonWidget2(
                    //   buttonText2: 'Signup',
                    //   onTap: () {},
                    // ),
                    TextButton(
                      child: const SmallText2(
                        smallText2: 'Signup',
                        color2: Colors.blue,
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()));
                      },
                    ),
                    const Gap(30),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    ));
  }
}
