import 'package:flutter/material.dart';

class SecondTaskPage extends StatelessWidget {
  const SecondTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2 задание'),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? Image.asset('assets/images/human_sport.gif')
              : Center(child: Image.asset('assets/images/human_sleep.gif'));
        },
      ),
    );
  }
}
