// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, unused_local_variable, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Color green = Color(0xFF4aba95);
bool remember = false;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body:
          //IconButton(onPressed: () {}, icon: Icon(Icons.backspace_rounded)),
          Stack(
        children: [
          Container(
            width: width,
            height: 300,
            padding: EdgeInsets.only(left: 1, top: 50),
            color: green,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      right: width - 30, top: 10, bottom: 30, left: 10),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 40,
                        color: Colors.white,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(right: 60, left: 40),
                  child: Text(
                    "Welcome to Pathetic designs ",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 136, left: 40),
                  child: Text(
                    "this is the best pathetic design ever",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height - 300,
            margin: EdgeInsets.only(
              top: 240,
            ),
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.white),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        left: 20, right: 260, top: 30, bottom: 30),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: green, fontSize: 28),
                    )),
                Container(
                  //Username
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: TextStyle(
                          color: green,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: green, width: 4)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(color: green)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: green),
                          borderRadius: BorderRadius.circular(28),
                        ),
                        prefixIcon: Icon(
                          Icons.person_outlined,
                          color: green,
                        )),
                  ),
                ),
                Divider(
                  height: 30,
                ),
                Container(
                  //Password
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: green,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: green, width: 4)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(color: green)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: green),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      prefixIcon: Icon(
                        Icons.person_outlined,
                        color: green,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.remove_red_eye_outlined)),
                    ),
                    obscureText: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
