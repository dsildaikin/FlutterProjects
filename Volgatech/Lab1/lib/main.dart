import 'package:flutter/material.dart';
import 'package:lab1/pages/home_page.dart';
import 'package:lab1/pages/first_task_page.dart';
import 'package:lab1/pages/second_task_page.dart';
import 'package:lab1/pages/third_task_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 40.0)),
      ),
      title: 'Lab Work 1',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/firstTask': (context) => const FirstTaskPage(),
        '/secondTask': (context) => const SecondTaskPage(),
        '/thirdTask': (context) => const ThirdTaskPage(),
      },
    ),
  );
}
