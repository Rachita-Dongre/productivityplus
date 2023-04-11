// login screen

import 'package:flutter/material.dart';
import 'package:productivityplus/utils/routes/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

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
      await Future.delayed(const Duration(milliseconds: 150));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Material(
          color: Colors.white,
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/login_screen_image.jpg",
                      fit: BoxFit.cover,
                      width: 400,
                      height: 300,
                    ),
                    Text(
                      "Welcome $name",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: "Enter your username here...",
                                labelText: "Username"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Username can not be empty";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              name = value;
                              setState(() {});
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: "Enter your email here...",
                                labelText: "Email"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Email can not be empty";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: "Enter your password here...",
                                labelText: "Password"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Password can not be empty";
                              } else if (value.length < 8) {
                                return "Length of password should atleasat be 8 characters.";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          InkWell(
                            onTap: () => moveToHome(context),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 150),
                              width: changeButton ? 50 : 150,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(
                                    changeButton ? 50 : 8),
                              ),
                              child: changeButton
                                  ? const Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : const Text(
                                      "Login",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                            ),
                          ),

                          // ElevatedButton(
                          //   onPressed: () {
                          //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                          //   },
                          //   child: Text('Login'),
                          // ),
                        ],
                      ),
                    ),
                    const Text('Forgot Password?'),
                    const Text('Not registered yet? Register here!')
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
