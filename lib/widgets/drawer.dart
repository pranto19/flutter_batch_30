import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://media-exp1.licdn.com/dms/image/C5603AQHE4kcpmsYM1g/profile-displayphoto-shrink_200_200/0/1628695083136?e=1637798400&v=beta&t=s80pzsgaBwng1JhjlEoNuE_6rdDLPUAfOfxIcsKrDpc";

    return Drawer(
      child: Column(
        children: [
          Container(
            width: 320,
            height: 200,
            child: DrawerHeader(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(imageurl),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Name: Rakib Uddin Rony",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text("Email: r.rony9966@gmail.com"),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}



      // child: ListView(
      //   children: [
      //     DrawerHeader(
      //       padding: EdgeInsets.zero,
      //       child: UserAccountsDrawerHeader(
      //         margin: EdgeInsets.zero,
      //         accountName: Text("Md. Rakib Uddin"),
      //         accountEmail: Text("r.rony9966@gmail.com"),
      //         currentAccountPicture: CircleAvatar(
      //           backgroundImage: NetworkImage(imageurl),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    