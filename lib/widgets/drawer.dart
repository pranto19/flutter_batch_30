import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/routes.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

FirebaseAuth auth = FirebaseAuth.instance;

signOut() async {
  await auth.signOut();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: 320,
            height: 220,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2021/06/29/06/14/water-drops-6373296__340.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
            )),
            child: DrawerHeader(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                    child: Container(
                      height: 80,
                      width: 80,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://epagebd.com/rakib-uddin-rony.jpg"),
                      ),
                    ),
                  ),
                  Text("Name: Rakib Uddin Rony",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  SizedBox(height: 10),
                  Text("Email: r.rony9966@gmail.com"),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.loginRoute);
            },
            leading: Icon(CupertinoIcons.home),
            title: Text("Home", textScaleFactor: 1.2),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/registration');
            },
            leading: Icon(Icons.add_circle_outline),
            title: Text("Registration", textScaleFactor: 1.2),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text("Profile", textScaleFactor: 1.2),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.settings),
            title: Text("Settings", textScaleFactor: 1.2),
          ),
          ListTile(
            onTap: () {
              signOut();
              Navigator.pushNamed(context, MyRoutes.loginRoute);
            },
            leading: Icon(Icons.logout_rounded),
            title: Text("Logout", textScaleFactor: 1.2),
          ),
        ],
      ),
    );
  }
}









// ListTile(
//             leading: Icon(CupertinoIcons.home),
//             title: Text(
//               "Home",
//               textScaleFactor: 1.3,
//             ),
//           ),


      // child: ListView(
      //   children: [
      //     DrawerHeader(
      //       padding: EdgeInsets.zero,
      //       child: UserAccountsDrawerHeader(
      //         accountEmail: Text(
      //           "r.rony9966@gmail.com",
      //           style:
      //               TextStyle(color: Theme.of(context).colorScheme.onPrimary),
      //         ),
      //         accountName: Text(
      //           "Md. Rakib Uddin",
      //           style:
      //               TextStyle(color: Theme.of(context).colorScheme.onPrimary),
      //         ),
      //         currentAccountPicture: CircleAvatar(
      //           backgroundImage: NetworkImage(imageUrl),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    