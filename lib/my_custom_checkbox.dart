import 'package:flutter/material.dart';

class MyCustomCheckbox extends StatefulWidget {
  const MyCustomCheckbox({super.key});

  @override
  State<MyCustomCheckbox> createState() => _MyCustomCheckboxState();
}

class _MyCustomCheckboxState extends State<MyCustomCheckbox> {
  bool valueFirst = false;
  bool valueSecond = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: 10,
        ),
        const Text(
          'Checkbox with Header and Subtitle',
          style: TextStyle(fontSize: 20.0),
        ),
        CheckboxListTile(
            secondary: const Icon(Icons.alarm),
            title: const Text('Ringing at 4:30 AM every day'),
            subtitle: const Text('Ringing after 12 hours'),
            value: valueFirst,
            onChanged: (value) {
              setState(() {
                valueFirst = value!;
              });
            }),
        CheckboxListTile(
            secondary: const Icon(Icons.alarm),
            title: const Text('Ringing at 5:00 AM every day'),
            subtitle: const Text('Ringing after 12 hours'),
            value: valueSecond,
            onChanged: (value) {
              setState(() {
                valueSecond = value!;
              });
            }),
      ],
    );
  }
}
