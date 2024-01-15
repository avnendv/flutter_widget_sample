import 'package:flutter/material.dart';

class MyCustomAlert extends StatelessWidget {
  const MyCustomAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            showAlertDialog(context);
          },
          child: const Text('Show Alert')),
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget okButton = TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text('OK'));

  // Create Alert Dialog
  AlertDialog alert = AlertDialog(
    title: const Text('Simple Alert'),
    content: const Text('This is an alert message!'),
    actions: [okButton],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (context) {
      return alert;
    },
  );
}
