import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/const_colors.dart';
import 'listTile_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: screenSize.width * 0.5,
      backgroundColor: colOrange1,
      child: ListView(
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Padding(
              padding:
                  EdgeInsets.only(left: 10, right: screenSize.width * 0.38),
              child: Container(
                height: 36,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white),
                child: const Icon(Icons.arrow_back_ios_rounded),
              ),
            ),
          ),
          const Gap(40),
          ListTileWidget(
            title: 'Home',
            leading: const Icon(Icons.home_rounded),
            onTap: () {},
          ),
          ListTileWidget(
            title: 'Orders',
            leading: const Icon(Icons.home_rounded),
            onTap: () {},
          ),
          ListTileWidget(
            title: 'Cart',
            leading: const Icon(Icons.home_rounded),
            onTap: () {},
          ),
          ListTileWidget(
            title: 'Account',
            leading: const Icon(Icons.home_rounded),
            onTap: () {},
          ),
          ListTileWidget(
            title: 'About Us',
            leading: const Icon(Icons.home_rounded),
            onTap: () {},
          ),
          Gap(screenSize.height * 0.35),
          ListTileWidget(
            title: 'Logout',
            leading: const Icon(Icons.home_rounded),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
