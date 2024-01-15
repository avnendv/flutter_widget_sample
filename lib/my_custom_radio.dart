import 'package:flutter/material.dart';

enum BestTutorSite { w3schools, tutorialAndExample }

class MyCustomRadio extends StatefulWidget {
  const MyCustomRadio({super.key});

  @override
  State<MyCustomRadio> createState() => _MyCustomRadioState();
}

class _MyCustomRadioState extends State<MyCustomRadio> {
  BestTutorSite _site = BestTutorSite.w3schools;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('w3schools'),
          leading: Radio(
            value: BestTutorSite.w3schools,
            groupValue: _site,
            onChanged: (value) {
              setState(() {
                _site = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('tutorialAndExample'),
          leading: Radio(
            value: BestTutorSite.tutorialAndExample,
            groupValue: _site,
            onChanged: (value) {
              setState(() {
                _site = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}
