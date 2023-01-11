import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nice_menu_mobile/screens/signup/signup.dart';
import 'package:nice_menu_mobile/screens/signup/otp.dart';
import 'package:nice_menu_mobile/widgets/button_widget.dart';
import 'package:nice_menu_mobile/widgets/textfield.dart';

import '../../utils/const_text.dart';

class SignUp2 extends StatefulWidget {
  const SignUp2({super.key});

  @override
  State<SignUp2> createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const MidText(midText: 'Create an account'),
        // leading: IconButton(
        //   onPressed: (){},
        //   icon: const Icon(Icons.arrow_back_ios_new_rounded),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: ListView(
            children: [
              FieldText(midText: 'Name'),
              FieldWidget(hintText: 'Name'),
              Gap(10),
              Container(
                child: Row(),
              ),
              FieldText(midText: 'Gender'),
              FieldWidget(hintText: 'Gender'),
              Gap(10),
              FieldText(midText: 'Address'),
              FieldWidget(hintText: 'Address'),
              FieldText(midText: 'Phone'),
              FieldWidget(hintText: 'Phone'),
              Gap(20),
              ButtonWidget1(
                buttonText: 'Sign Up',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Otp()));
                },
              ),
              ButtonWidget()
            ],
          ),
        ),
      ),
    );
  }
}
