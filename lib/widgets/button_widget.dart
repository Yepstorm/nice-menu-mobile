import 'package:flutter/material.dart';

import '../utils/const_colors.dart';
import '../utils/const_text.dart';

class ButtonWidget1 extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  ButtonWidget1({
    required this.buttonText,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.none,
        width: double.infinity,
        height: 50,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: colOrange1,
        ),
        child: Center(child: ButtonText(buttonText: buttonText)),
      ),
    );
  }
}

class ButtonWidget2 extends StatelessWidget {
  final String buttonText2;
  final VoidCallback onTap;
  ButtonWidget2({
    required this.buttonText2,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.none,
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: colOrange1),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Center(child: ButtonText2(buttonText2: buttonText2)),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.apple_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.apple_rounded))
        ],
      ),
    );
  }
}
