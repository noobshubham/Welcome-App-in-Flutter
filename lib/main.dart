import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const WelcomePage(),
    );
  }
}

String imagePath1 = 'images/joker.png';
String imagePath2 = 'images/yeah.png';
String currentPath = imagePath1;

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome App in Flutter'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                onPressed: () {
                  setState(() {
                    if (currentPath == imagePath1) {
                      currentPath = imagePath2;
                    } else {
                      currentPath = imagePath1;
                    }
                  });
                },
                child: const Text('CLICK'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Column(
                children: List.generate(
                  4,
                  (index) => Image.asset(currentPath),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
