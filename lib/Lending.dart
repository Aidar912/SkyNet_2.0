// ignore_for_file: prefer_const_constructors, prefer_const_declarations, file_names

import 'package:flutter/material.dart';
import 'package:sky_net_application/Page/LoginPage.dart';
import 'package:sky_net_application/Page/ProfilePage.dart';


class Lending extends StatelessWidget {
  const Lending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isLoggedIn = false;
    return isLoggedIn ? ProfilePage() : LoginPage();
  }
}