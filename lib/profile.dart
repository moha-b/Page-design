// ignore_for_file: unused_import, prefer_const_constructors_in_immutables, prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_new, sized_box_for_whitespace

import 'dart:ui';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProfilePage(), debugShowCheckedModeBanner: false);
  }
}

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

Color blue = Color(0xFFe493d5);

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    //final width = MediaQuery.of(context).size.width;
    //final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Wrap(
        children: [
          Column(
            children: [
              //the curves
              Container(
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: ClipPath(
                        clipper: Wave(),
                        child: Container(
                          color: blue,
                          height: 240,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    ClipPath(
                      clipper: Wave(),
                      child: Container(
                        color: blue,
                        height: 210,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                      child: CircleAvatar(
                        radius: 61,
                        backgroundImage: AssetImage('images/TokyoGhoul.jpg'),
                      ),
                      alignment: Alignment.center,
                      height: 340,
                    ),
                    Container(
                        height: 180,
                        margin: EdgeInsets.only(right: 180),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              size: 38,
                              color: Colors.white,
                            ))),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 240),
                      child: Column(children: [
                        Text("Mohab",style: TextStyle(fontSize: 30,color: blue),),
                        Text("MohabKhalid21@gmail.com",style: TextStyle(fontSize: 15,color: blue),)
                      ],),
                    )
                  ],
                ),
              ),
              // Setting
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  color: blue,child: InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(Icons.settings_outlined,color: Colors.white,),
                      title: Text(
                        "Settings",
                        style: TextStyle(color:Colors.white),
                      ),
                    ),
                  ),shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: blue)),
                ),
              ),
              Divider(height: 20,),
              // personal Info
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  color: blue,child: InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(Icons.person_pin,color: Colors.white,),
                    title: Text(
                      "Edit Profile",
                      style: TextStyle(color:Colors.white),
                    ),
                  ),
                ),shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: blue)),
                ),
              ),
              Divider(height: 20,),
              // notifications
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  color: blue,child: InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(Icons.notifications,color: Colors.white,),
                    title: Text(
                      "Notifications",
                      style: TextStyle(color:Colors.white),
                    ),
                  ),
                ),shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: blue)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Wave extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height);
    var firstStart = Offset(size.width / 5, size.height);
    var firstEnd = Offset(size.width / 2.5, size.height - 50);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    var secondEnd = Offset(size.width, size.height - 10);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
