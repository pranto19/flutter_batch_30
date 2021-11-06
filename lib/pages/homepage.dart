import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text("MeKurt"),
            Text(
              "Product List",
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
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
