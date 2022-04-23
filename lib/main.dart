// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, unused_local_variable, avoid_unnecessary_containers, avoid_print, sized_box_for_whitespace

import 'dart:ui';

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
Color gray = Colors.grey;
bool remember = false;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body:
          //IconButton(onPressed: () {}, icon: Icon(Icons.backspace_rounded)),
          Wrap(
        children: [
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
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 260, top: 30, bottom: 30),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(color: green, fontSize: 28),
                        )),
                    //userName
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
                    //password
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
                            Icons.lock_outline,
                            color: green,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (gray == Colors.grey) {
                                  gray = green;
                                } else {
                                  gray = Colors.grey;
                                }
                              });
                            },
                            icon: Icon(
                              Icons.remove_red_eye_outlined,
                              color: gray,
                            ),
                          ),
                        ),
                        obscureText: true,
                      ),
                    ),
                    //Check Box
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: CheckboxListTile(
                        value: remember,
                        onChanged: (value) {
                          setState(() {
                            remember = value!;
                            if (gray == Colors.grey) {
                              gray = green;
                            } else {
                              gray = Colors.grey;
                            }
                          });
                        },
                        title: Text(
                          "Remember me",
                          style: TextStyle(color: gray),
                        ),
                        activeColor: green,
                        selected: remember,
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                    //button
                    Container(
                      //button
                      width: width,
                      margin: EdgeInsets.only(left: 30, top: 100, right: 30),
                      height: 41,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: green,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(29)),
                        ),
                      ),
                    ),
                    //footer
                    Container(
                      margin: EdgeInsets.only(top: 66, left: 75),
                      child: Row(
                        children: [
                          Text(
                            "Don't have an Account?",
                            style: TextStyle(color: gray),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Register now",
                              style: TextStyle(color: green),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
