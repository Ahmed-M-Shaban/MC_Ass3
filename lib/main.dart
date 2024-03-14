import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              "Login Screen App",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Center(
            child: Column(
              children: [
                const Text(
                  "Codeplayon",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 35,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "User Name"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      hintText: "Password"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Forget Password",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      minimumSize: Size(double.infinity, 50)),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Does not have account?"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
