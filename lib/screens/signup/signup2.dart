import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
// import 'package:nice_menu_mobile/screens/signup/signup.dart';
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
          clipBehavior: Clip.none,
          child: ListView(
            children: [
              const FieldText(midText: 'Name'),
              FieldWidget(hintText: 'Name'),
              const Gap(10),
              Container(
                clipBehavior: Clip.none,
                child: Row(),
              ),
              const FieldText(midText: 'Gender'),
              FieldWidget(hintText: 'Gender'),
              const Gap(10),
              const FieldText(midText: 'Address'),
              FieldWidget(hintText: 'Address'),
              const FieldText(midText: 'Phone'),
              FieldWidget(hintText: 'Phone'),
              const Gap(20),
              ButtonWidget1(
                buttonText: 'Sign Up',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Otp()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
