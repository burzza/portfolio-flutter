import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: const [
          Center(
              child: Text(
            'Binesh Burja Magar',
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
            ),
          ))
        ],
      ),
    );
  }
}
