import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nicemenu/utils/const_colors.dart';
import 'package:nicemenu/widgets/listTile_widget.dart';

import '../../widgets/drawer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homescreen'),
      ),
      drawer: DrawerWidget(screenSize: screenSize),
      // body: Scaffold(bottomNavigationBar: ),
    );
  }
}
