// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'dart:ui';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF1a1a1a)
      ),
    );
  }
}

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

Color green = Color(0xFF288550);

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
        Column(children: [
         // header
          Container(
            margin: EdgeInsets.only(top: 60,left: 30,right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              //AssetImage(""),
              Icon(Icons.category_outlined, color: Colors.white, size: 20,),
              Icon(Icons.notifications_active_outlined, color: Colors.white, size: 20,),
            ],),
          ),
          SizedBox(height: 50,),
          // body
          Container(
            height: 200,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),gradient: LinearGradient(colors: [
              Color(0xFF288550),
              Color(0xFF105633),
            ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                margin: EdgeInsets.only(left: 20,top: 30),
                  child: Text("Balance",style: TextStyle(color: Colors.white,fontSize: 24),)),
              Container(margin: EdgeInsets.only(left: 10),child: ListTile(title: Text("3015\$",style: TextStyle(color: Colors.white,fontSize: 33),),trailing: Icon(Icons.remove_red_eye_outlined,color: Colors.white,),)),
              Container(margin: EdgeInsets.only(left: 27),child: Text("Consumption for April - 188\$",style: TextStyle(color: Colors.white,fontSize: 15,)),)
            ],),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 37),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),gradient: LinearGradient(colors: [
                    Color(0xFF288550),
                    Color(0xFF105633),
                  ])),
                  child: Icon(Icons.credit_card_rounded,color: Colors.white,size: 40,),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),gradient: LinearGradient(colors: [
                    Color(0xFF288550),
                    Color(0xFF105633),
                  ])),
                  child: Icon(Icons.five_g_outlined,color: Colors.white,size: 40,),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),gradient: LinearGradient(colors: [
                    Color(0xFF288550),
                    Color(0xFF105633),
                  ])),
                  child: Icon(Icons.qr_code_scanner_rounded,color: Colors.white,size: 40,),
                ),
              ],),
          ),
        ],));
  }
}
