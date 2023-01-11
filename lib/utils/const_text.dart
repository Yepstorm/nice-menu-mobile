import 'package:flutter/material.dart';
import 'package:nice_menu_mobile/utils/const_colors.dart';

class TextLarge extends StatelessWidget {
  const TextLarge({super.key, required this.largeText});
  final String largeText;
  @override
  Widget build(BuildContext context) {
    return Text(
      largeText,
      style: const TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black),
    );
  }
}

class BigText extends StatelessWidget {
  const BigText({super.key, required this.bigText});
  final String bigText;
  @override
  Widget build(BuildContext context) {
    return Text(
      bigText,
      style: const TextStyle(
          fontSize: 19, fontWeight: FontWeight.w500, color: Colors.black),
    );
  }
}

class MidText extends StatelessWidget {
  const MidText({super.key, required this.midText});
  final String midText;
  @override
  Widget build(BuildContext context) {
    return Text(
      midText,
      style: const TextStyle(
          fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
    );
  }
}

class MidText2 extends StatelessWidget {
  const MidText2({super.key, required this.midText2});
  final String midText2;
  @override
  Widget build(BuildContext context) {
    return Text(
      midText2,
      style: const TextStyle(
          fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
    );
  }
}

class MidText3 extends StatelessWidget {
  const MidText3({super.key, required this.midText3});
  final String midText3;
  @override
  Widget build(BuildContext context) {
    return Text(
      midText3,
      style: const TextStyle(
          fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
    );
  }
}

class SmallText extends StatelessWidget {
  const SmallText({super.key, required this.smallText});
  final String smallText;
  @override
  Widget build(BuildContext context) {
    return Text(
      smallText,
      style: const TextStyle(
          fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),
    );
  }
}

class SmallText2 extends StatelessWidget {
  const SmallText2({super.key, required this.smallText2});
  final String smallText2;
  @override
  Widget build(BuildContext context) {
    return Text(
      smallText2,
      style: const TextStyle(
          fontSize: 13, fontWeight: FontWeight.w600, color: Colors.black),
    );
  }
}

class XText extends StatelessWidget {
  const XText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '*',
      style: const TextStyle(
          fontSize: 19, fontWeight: FontWeight.w300, color: Colors.red),
    );
  }
}

class ButtonText extends StatelessWidget {
  const ButtonText({super.key, required this.buttonText});
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Text(
      buttonText,
      style: const TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w300,
          color: Color.fromARGB(255, 255, 255, 255)),
    );
  }
}

class ButtonText2 extends StatelessWidget {
  const ButtonText2({super.key, required this.buttonText2});
  final String buttonText2;
  @override
  Widget build(BuildContext context) {
    return Text(
      buttonText2,
      style: const TextStyle(
          fontSize: 19, fontWeight: FontWeight.w300, color: colOrange1),
    );
  }
}
