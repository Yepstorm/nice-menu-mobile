import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nice_menu_mobile/screens/signup/signup2.dart';
import '../../utils/const_colors.dart';
import '../../utils/const_text.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/textfield.dart';

final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const MidText(midText: 'Create an account'),
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
                  FieldText(midText: 'Email'),
                  const EmailField(),
                  const Gap(15),
                  const PasswordWrite(),
                  const PasswordField(),
                  const Gap(15),
                  const PasswordWrite2(),
                  const PasswordField(),
                  const Gap(20),
                  ButtonWidget1(
                    buttonText: 'Continue', onTap: () { Navigator.push(
            context, MaterialPageRoute(builder: (context) => const SignUp2()));
      },
                  ),
                  ButtonWidget()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}



class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      child: TextFormField(
        obscureText: true,
        obscuringCharacter: "*",
        keyboardType: TextInputType.visiblePassword,
        // controller: password,
        validator: (value) {
          if (value!.isEmpty) {
            return "Password cannot be empty";
          }
          return null;
        },
        decoration: const InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
            label: Text("Password")),
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value == "") {
                return "Email Address is required";
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
              labelText: "Email",
              hintText: "e.g abc@xyz.com",
            ),
            // controller: ,
          ),
        ],
      ),
    );
  }
}

class PasswordWrite extends StatelessWidget {
  const PasswordWrite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [MidText(midText: 'Password '), XText()],
    );
  }
}

class PasswordWrite2 extends StatelessWidget {
  const PasswordWrite2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [MidText(midText: 'Confirm Password '), XText()],
    );
  }
}
