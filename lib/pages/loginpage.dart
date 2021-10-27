import 'package:flutter/material.dart';
import 'package:flutter_app/pages/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
              Text(
                "Welcome $name",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "User name is Empty";
                          }
                          return null;
                        },
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password is Empty";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                child: InkWell(
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                  splashColor: Colors.red,
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 120,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
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
        ),
      ),
    );
  }
}
