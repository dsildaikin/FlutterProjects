import 'package:flutter/material.dart';

class FirstTaskPage extends StatelessWidget {
  const FirstTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1 задание'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              child: Image.asset(
                'assets/images/dog.jpg',
                scale: 5,
              ),
            ),
            Column(
              children: [
                customText('Силдайкин'),
                customText('Дмитрий'),
                customText('Николаевич'),
              ],
            ),
            const Text('Возраст: 22 лет'),
          ],
        ),
      ),
    );
  }

  ShaderMask customText(String customText) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const RadialGradient(
          center: Alignment.topLeft,
          radius: 4.0,
          colors: <Color>[
            Color(0xff1f005c),
            Color(0xff5b0060),
            Color(0xff870160),
            Color(0xffac255e),
            Color(0xffca485c),
            Color(0xffe16b5c),
            Color(0xfff39060),
            Color(0xffffb56b),
          ],
          tileMode: TileMode.mirror,
        ).createShader(bounds);
      },
      child: Text(
        customText,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
