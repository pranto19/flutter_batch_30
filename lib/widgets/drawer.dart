import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://media-exp1.licdn.com/dms/image/C5603AQHE4kcpmsYM1g/profile-displayphoto-shrink_200_200/0/1628695083136?e=1637798400&v=beta&t=s80pzsgaBwng1JhjlEoNuE_6rdDLPUAfOfxIcsKrDpc";

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Md. Rakib Uddin"),
              accountEmail: Text("r.rony9966@gmail.com"),
              currentAccountPicture: Image.network(imageurl),
            ),
          ),
        ],
      ),
    );
  }
}
