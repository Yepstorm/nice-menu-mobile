import 'package:flutter/material.dart';
import 'package:nicemenu/utils/const_text.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  final Widget leading;
  final VoidCallback onTap;

  const ListTileWidget({
    Key? key,
    required this.title,
    required this.leading,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: ListTile(
        title: MidText(
          midText: title,
          color: Colors.white,
        ),
        leading: leading,
        iconColor: Colors.white,
        onTap: onTap,
        minLeadingWidth: 10,
        minVerticalPadding: 2,
      ),
    );
  }
}
