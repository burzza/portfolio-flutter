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
        padding: const EdgeInsets.symmetric(horizontal: 23.0),
        children: [
          const SizedBox(height: 50.0),
          _nameAndBased(),
          const SizedBox(height: 100.0),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    'Biography'.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Center _nameAndBased() {
    return const Center(
        child: Text(
      'Binesh Burja Magar \n Flutter Developer Based in Nepal',
      style: TextStyle(
        color: Colors.black,
        fontSize: 28,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    ));
  }
}
