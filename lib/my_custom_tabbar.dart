import 'package:flutter/material.dart';

class MyCustomTabBar extends StatelessWidget {
  const MyCustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.contacts),
                text: "Tab 1",
              ),
              Tab(
                icon: Icon(Icons.camera_alt),
                text: "Tab 2",
              ),
            ]),
          ),
          body: const TabBarView(children: [
            FirstScreen(),
            SecondScreen(),
          ]),
        ));
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Is first screen!'));
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Is second screen!'));
  }
}
