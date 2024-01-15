import 'package:flutter/material.dart';

class MyCustomCard extends StatelessWidget {
  const MyCustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      padding: const EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.red,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ListTile(
              leading: Icon(
                Icons.album,
                size: 60,
              ),
              title: Text(
                'AVNENDV',
                style: TextStyle(fontSize: 30.0),
              ),
              subtitle: Text(
                'test card',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            ButtonBar(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Play'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Pause'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
