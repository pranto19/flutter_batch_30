import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 120,
              width: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: const Image(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2021/06/29/06/14/water-drops-6373296__340.jpg")),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
                width: 400,
                child: Card(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          "Name: Md. Rakib Uddin",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 23),
                        ),
                        Text(
                          "Email: r.rony9966@gmail.com",
                          style: TextStyle(fontSize: 23),
                        ),
                        Text(
                          "Phone: 01722414101",
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
