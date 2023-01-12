import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nicemenu/utils/const_colors.dart';
import 'package:nicemenu/utils/const_text.dart';
import 'package:nicemenu/widgets/textfield.dart';

import '../../widgets/foodTile_widget.dart';

class HomeScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchFieldWidget(hintText: 'Search foods, dishes'),
            const Gap(20),
            const BigText(bigText: 'Exclusive Offers'),
            Container(
              clipBehavior: Clip.none,
              height: 150,
              width: double.infinity,
              decoration: const BoxDecoration(color: colOrange1),
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                MidText(midText: 'Available Dishes'),
                MidText(
                  midText: 'View Favorites',
                  color: Colors.blue,
                )
              ],
            ),
            const Gap(10),
            const FoodTile(
              assetname: 'jollof.png',
            )
          ],
        ),
      ),
    ));
  }
}
