import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nice_menu_mobile/screens/verify_account/verify_account.dart';

import '../../../utils/const_text.dart';
import '../../../widgets/button_widget.dart';
import '../../../widgets/textfield.dart';
import '../../login/signin.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({super.key});

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
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
              const BigText(bigText: 'Reset password'),
              const Gap(15),
              const MidText2(
                  midText2: 'Enter your email below to reset password'),
              const Gap(30),
              Column(
                children: [
                  const FieldText(midText: 'Email'),
                  const EmailField(),
                  const Gap(30),
                  ButtonWidget1(
                    buttonText: 'Verify email',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VerifyAccount()));
                    },
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
