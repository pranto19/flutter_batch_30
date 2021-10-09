import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.red,
        elevation: 2.0,
        centerTitle: true,
        title: Text("Tomato Apps"),
      ),
      drawer: Drawer(),
      
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          color: Colors.black,
          child: const Center(
              child: Text(
            "This is my first Application",
            style: TextStyle(
                fontSize: 23,
                color: Colors.red,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.blue),
          )),
        ),
      ),
    );
  }
}
