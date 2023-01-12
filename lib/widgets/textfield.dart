import 'package:flutter/material.dart';
import 'package:nicemenu/helper/dropdown_help.dart';

import '../utils/const_text.dart';

class SearchFieldWidget extends StatelessWidget {
  final String? hintText;
  // final String? initialValue;
  // final Function? validator;
  // final Function? onSaved;
  // final bool isPassword;
  // final bool isEmail;
  // final bool isNumber;
  final InputBorder? border;

  const SearchFieldWidget({
    @required this.hintText,
    // this.initialValue,
    // this.validator,
    // this.onSaved,
    // this.isPassword = false,
    // this.isEmail = false,
    // this.isNumber = false,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 1, right: 1, top: 10, bottom: 15),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search_rounded),
          border: border ??
              OutlineInputBorder(
                  gapPadding: 2, borderRadius: BorderRadius.circular(20)),
          hintText: hintText,
        ),
      ),
    );
  }
}

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

class FieldWidget2 extends StatelessWidget {
  final String? hintText;
  final String? initialValue;
  final Function? validator;
  final Function? onSaved;
  final bool isPassword;
  final bool isEmail;
  final bool isNumber;
  final InputBorder? border;
  final Widget? dropDown;

  const FieldWidget2({
    @required this.hintText,
    this.initialValue,
    this.validator,
    this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
    this.isNumber = false,
    this.border,
    this.dropDown,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: TextFormField(
        decoration: InputDecoration(
          suffix: dropDown ?? MyDropdownWidget(),
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
