import 'package:flutter/material.dart';
import 'package:flutter_app/pages/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Welcome",
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(
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
                ),
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
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: Text("Login"),
              style: TextButton.styleFrom(
                  minimumSize: const Size(100, 40),
                  backgroundColor: Colors.blue)),
          const SizedBox(
            height: 20,          ),
          const Text("Forgot Password?"),
        ],
      ),
    );
  }
}
