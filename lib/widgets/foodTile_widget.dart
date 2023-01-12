import 'package:flutter/material.dart';

import '../utils/const_text.dart';

class FoodTile extends StatelessWidget {
  final String assetname;
  const FoodTile({
    Key? key,
    required this.assetname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 80,
        height: 80,
        decoration: const BoxDecoration(
          color: Color.fromARGB(158, 158, 158, 158),
        ),
        child: Image.asset(
          'assets/images/$assetname',
          fit: BoxFit.fill,
        ),
      ),
      trailing: Container(
          width: 60,
          height: 40,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color.fromARGB(255, 222, 125, 39)),
          child: const Center(
            child: MidText(
              midText: 'Order',
              color: Colors.white,
            ),
          )),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          MidText(midText: 'Jollof Rice'),
          TinyText(tinyText: 'Servings: Chicken Turkey')
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          TinyText(tinyText: 'Starting from'),
          MidText(midText: '1700'),
        ],
      ),
    );
  }
}
