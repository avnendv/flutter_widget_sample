import 'package:flutter/material.dart';

// Create a Form Widget
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  // create a global key that uniquely identifies the form widget
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter your name',
                labelText: 'Name'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Name is required';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter a phone number',
                labelText: 'Phone'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Phone is required';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter your date of birth',
                labelText: 'Dob'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Date is required';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    // Validate the form by getting the FormState from the GlobalKey
                    // and calling validate() on it.
                    var valid = _formKey.currentState!.validate();
                    if (!valid) {
                      return;
                    }
                    // If the form is valid, display a Snackbar.
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Theme.of(context).primaryColor,
                        content: const Text('Data is in processing.')));
                  },
                  child: const Text('Submit!')),
            ),
          )
        ],
      ),
    );
  }
}
