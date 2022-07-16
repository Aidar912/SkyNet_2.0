// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sky_net_application/Page/ChatPage.dart';
import 'package:sky_net_application/Page/NewsPage.dart';
import 'package:sky_net_application/Page/ProfilePage.dart';
import 'package:sky_net_application/Page/SettingsPage.dart';
import 'package:sky_net_application/Page/StocksPage.dart';

class NavigationBarClass extends StatefulWidget {
  const NavigationBarClass({Key? key}) : super(key: key);

  @override
  State<NavigationBarClass> createState() => _NavigationBarClassState();
}

class _NavigationBarClassState extends State<NavigationBarClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        onTabChange: (index) {
          NewsPage();
          StocksPage();
          ProfilePage();
          ChatPage();
          SettingsPage();
        },
        gap: 8.0,
        activeColor: Colors.pink,
        curve: Curves.decelerate,
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
        iconSize: 24,
        haptic: true,
        selectedIndex: 2,
        tabs: const [
          GButton(
            icon: Icons.newspaper,
            text: "Новости",
          ),
          GButton(
            icon: Icons.add_alert,
            text: "Акции",
          ),

          GButton(
            icon: Icons.home,
            text: "Профиль",
          ),
          GButton(
            icon: Icons.chat,
            text: "Чат",
          ),
          GButton(
            icon: Icons.settings,
            text: "Настройки",
          ),
        ],
      ),
    );
  }
}
