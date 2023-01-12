import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/const_text.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/textfield.dart';
import 'otp.dart';

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
              const FieldText(midText: 'Name'),
              const FieldWidget(hintText: 'Name'),
              const Gap(10),
              Container(
                child: Row(),
              ),
              const FieldText(midText: 'Gender'),
              const FieldWidget2(hintText: 'Gender'),
              const Gap(10),
              const SizedBox(
                height: 20,
                // child: MyDropdownWidget(),
              ),
              const FieldText(midText: 'Address'),
              const FieldWidget(hintText: 'Address'),
              const FieldText(midText: 'Phone'),
              const FieldWidget(hintText: 'Phone'),
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
