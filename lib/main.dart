// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sky_net_application/NavigationBarClass.dart';
import 'package:sky_net_application/Page/SplashScreen.dart';

void main() async{


  runApp(MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: "SkyNet",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/NavigationBar' : (context) => NavigationBarClass(),
      },
    );
  }
}