import 'package:flutter/material.dart';
import 'package:portfolio_flutter/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Binesh Burja Magar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Garamond',
      ),
      home: const HomePage(),
    );
  }
}
