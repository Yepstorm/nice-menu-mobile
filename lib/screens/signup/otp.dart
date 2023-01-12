import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nice_menu_mobile/screens/signup/reset/reset_screen.dart';
import 'package:nice_menu_mobile/utils/const_text.dart';
import 'package:nice_menu_mobile/widgets/button_widget.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 0,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            title: const Text(
              "Verify account",
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              // Container(
              //   alignment: Alignment.topLeft,
              //   child: const Text(
              //     "OTP",
              //     style: TextStyle(
              //       fontSize: 18,
              //       fontWeight: FontWeight.w500,
              //       color: Color(0xffCE1567),
              //     ),
              //     textAlign: TextAlign.left,
              //   ),
              // ),
              const SmallText(
                  smallText:
                      'Please enter the verification code sent to\n ****xample@email.com to verify account'),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffcccccc),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin1) {},
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: const InputDecoration(
                          hintText: "*",
                          disabledBorder: InputBorder.none,
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffcccccc),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin1) {},
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: const InputDecoration(
                          hintText: "*",
                          disabledBorder: InputBorder.none,
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffcccccc),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: const InputDecoration(
                          hintText: "*",
                          disabledBorder: InputBorder.none,
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffcccccc),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: const InputDecoration(
                          hintText: "*",
                          disabledBorder: InputBorder.none,
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              const SizedBox(
                height: 20,
              ),
              ButtonWidget1(buttonText: 'Submit', onTap: () {
                 Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResetScreen()));
              })
            ]),
          )),
    );
  }
}
