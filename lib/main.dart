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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: StarClippingExample(),
      ),
    );
  }
}

class StarClippingExample extends StatelessWidget {
  const StarClippingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: _StarClipper(),
          child: Container(
            width: 100.0,
            height: 100.0,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}

Path _starPath() {
  return Path()
    ..moveTo(50.0, 0.0)
    ..lineTo(61.0, 35.0)
    ..lineTo(98.0, 35.0)
    ..lineTo(68.0, 58.0)
    ..lineTo(79.0, 95.0)
    ..lineTo(50.0, 70.0)
    ..lineTo(21.0, 95.0)
    ..lineTo(32.0, 58.0)
    ..lineTo(2.0, 35.0)
    ..lineTo(39.0, 35.0)
    ..close();
}

class _StarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return _starPath();
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
