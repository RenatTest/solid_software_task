import 'dart:math';
import 'package:flutter/material.dart';

// ignore: public_member_api_docs
class MyApp extends StatelessWidget {
  // ignore: public_member_api_docs
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// ignore: public_member_api_docs
class HomePage extends StatefulWidget {
  // ignore: public_member_api_docs
  const HomePage({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  final Random _random = Random();

  Color _backgroundColor = const Color.fromRGBO(
    38,
    28,
    38,
    1,
  );

  int maxIntColorR = 255;
  int maxIntColorG = 255;
  int maxIntColorB = 255;

  void setBackgroundColor() {
    setState(() {
      _backgroundColor = Color.fromRGBO(
        _random.nextInt(maxIntColorR),
        _random.nextInt(maxIntColorG),
        _random.nextInt(maxIntColorB),
        1,
      );
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: setBackgroundColor,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: const Center(
            child: Text(
              'Hello there',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
