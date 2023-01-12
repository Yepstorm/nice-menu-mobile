import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'const_colors.dart';

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
      style: GoogleFonts.inter(
          fontWeight: FontWeight.w500, fontSize: 25, color: Colors.black),
    );
  }
}

class MidText extends StatelessWidget {
  const MidText({super.key, required this.midText, this.color});
  final String midText;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      midText,
      style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: color ?? Colors.black),
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
  const SmallText({super.key, required this.smallText, this.color});
  final String smallText;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      smallText,
      style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: color ?? Colors.black),
    );
  }
}

class SmallText2 extends StatelessWidget {
  const SmallText2({super.key, required this.smallText2, this.color2});
  final String smallText2;
  final Color? color2;
  @override
  Widget build(BuildContext context) {
    return Text(
      smallText2,
      style: GoogleFonts.inter(
          fontWeight: FontWeight.w400,
          fontSize: 15,
          color: color2 ?? Colors.black),
    );
  }
}

class XText extends StatelessWidget {
  const XText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '*',
      style: TextStyle(
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

class TinyText extends StatelessWidget {
  const TinyText({super.key, required this.tinyText, this.color});
  final String tinyText;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      tinyText,
      style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: color ?? Colors.black),
    );
  }
}
