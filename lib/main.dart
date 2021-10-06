import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            width: 300,
            height: 200,
            color: Colors.black,
            child: const Center(
                child: Text(
              "This is my fist Application",
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.blue),
            )),
          ),
        ),
      ),
    );
  }
}
