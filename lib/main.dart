import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:robintest/constans/styles.dart';
import 'package:robintest/view/details/details_page.dart';
import 'package:robintest/view/routes/home.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(systemDart);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Burger Sublime',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
