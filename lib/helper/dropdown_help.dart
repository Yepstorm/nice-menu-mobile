import 'package:flutter/material.dart';

class MyDropdownWidget extends StatefulWidget {
  @override
  _MyDropdownWidgetState createState() => _MyDropdownWidgetState();
}

class _MyDropdownWidgetState extends State<MyDropdownWidget> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedValue,
      items: const [
        DropdownMenuItem(
          value: 'item1',
          child: Text('Item 1'),
        ),
        DropdownMenuItem(
          value: 'item2',
          child: Text('Item 2'),
        ),
      ],
      onChanged: (value) {
        setState(() {
          _selectedValue = value!;
        });
      },
    );
  }
}
