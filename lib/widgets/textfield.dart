import 'package:flutter/material.dart';

import '../utils/const_text.dart';

class FieldWidget extends StatelessWidget {
  final String? hintText;
  final String? initialValue;
  final Function? validator;
  final Function? onSaved;
  final bool isPassword;
  final bool isEmail;
  final bool isNumber;
  final InputBorder? border;

  const FieldWidget({
    @required this.hintText,
    this.initialValue,
    this.validator,
    this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
    this.isNumber = false,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          border: border ??
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
        initialValue: initialValue,
        validator: (value) {
          if (value!.isEmpty) {
            return "Password cannot be empty";
          }
          return null;
        },
        onSaved: (newValue) {},
        obscureText: isPassword,
        keyboardType: isEmail
            ? TextInputType.emailAddress
            : isNumber
                ? TextInputType.number
                : TextInputType.text,
      ),
    );
  }
}

class FieldText extends StatelessWidget {
  final String midText;
  const FieldText({
    required this.midText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [MidText(midText: midText)],
    );
  }
}
