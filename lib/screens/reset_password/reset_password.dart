import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/const_text.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/textfield.dart';
import '../login/signin.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          clipBehavior: Clip.none,
          child: ListView(
            children: [
              const Gap(50),
              const BigText(bigText: 'Create an account'),
              const Gap(15),
              const SmallText2(
                  smallText2: 'Fill in your details appropriately'),
              Row(
                children: const [
                  XText(),
                  Gap(10),
                  SmallText(smallText: 'Required')
                ],
              ),
              const Gap(30),
              Column(
                children: [
                  const FieldText(midText: 'Email'),
                  const EmailField(),
                  const Gap(15),
                  const PasswordWrite(),
                  const PasswordField(),
                  const Gap(15),
                  const PasswordWrite2(),
                  const PasswordField(),
                  const Gap(20),
                  ButtonWidget1(
                    buttonText: 'Continue',
                    onTap: () {},
                  ),
                  // const ButtonWidget()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
