import 'package:flutter/material.dart';
import 'package:flutter_app/pages/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "null";

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
              width: 400,
              height: 300,
              child: Image.asset(
                "assets/images/login_img.png",
                fit: BoxFit.fitHeight,
              )),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome $name",
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Your User ID",
                      labelText: "User ID",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    }),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Your Password",
                    labelText: "Password",
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          InkWell(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            child: Container(
              width: 100,
              height: 50,
              alignment: Alignment.center,
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),

          // ElevatedButton(
          //     onPressed: () {
          //       Navigator.pushNamed(context, MyRoutes.homeRoute);
          //     },
          //     child: const Text("Login"),
          //     style: TextButton.styleFrom(
          //         minimumSize: const Size(100, 40),
          //         backgroundColor: Colors.blue)),
          const SizedBox(
            height: 20,
          ),
          const Text("Forgot Password?"),
        ],
      ),
    );
  }
}
