import 'package:flutter/material.dart';

class Introduction {
  final String title;
  final String details;

  Introduction({required this.title, required this.details});
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<Introduction> leftIntro = [
  Introduction(
    title: 'Biography',
    details:
        'Hi, I\'m Binesh, a passionate Flutter developer with a years of experience building beautiful, high-performance mobile applications for iOS and Android platforms. I\'m constantly exploring new technologies and design patterns to create exceptional user experiences. Let\'s build something amazing together!',
  ),
  Introduction(
    title: 'Contact',
    details: 'Kathmandu, Nepal \nbineshburzaa@gmail.com',
  )
];
List<Introduction> rightIntro = [
  Introduction(title: 'years of experience', details: '1'),
  Introduction(title: 'projects done', details: '5+'),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 100.0),
        children: [
          const SizedBox(height: 50.0),
          _nameAndBased(),
          const SizedBox(height: 100.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...List.generate(
                      leftIntro.length,
                      (index) => _introductions(
                          title: leftIntro[index].title,
                          details: leftIntro[index].details,
                          isRight: false),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              AnimatedContainer(
                duration: const Duration(seconds: 3),
                curve: Curves.bounceIn,
                child: Container(
                  height: 500,
                  width: 400,
                  padding: const EdgeInsets.all(50.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80.0),
                    border: Border.all(color: Colors.grey, strokeAlign: 10.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80.0),
                    child: Image.asset(
                      'assets/images/binesh.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...List.generate(
                      rightIntro.length,
                      (index) => _introductions(
                          title: rightIntro[index].title,
                          details: rightIntro[index].details,
                          isRight: true),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _introductions(
      {required String title, required String details, required bool isRight}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 20.0),
        Text(
          details,
          style: TextStyle(
            color: Colors.black,
            fontSize: isRight ? 30.0 : 18.0,
          ),
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 30.0),
      ],
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
