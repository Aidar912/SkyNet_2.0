// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_const, unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);



  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final shape = StadiumBorder();
  bool obscurePassword = true;
  bool _agreement = false;
  final Uri _url = Uri.parse('https://developer.android.com/studio/run/emulator-acceleration');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
/*
Иконка
 */
             Image.asset(
                  'assets/picture/logo.png',
                  width: 200,
                  height: 200,
                ),
/*
Текстовой поле для логина
 */
              Padding(
                padding:
                    const EdgeInsets.only(left: 50.0, right: 50.0),
                child: TextField(
                  controller: _loginController,
                  decoration: InputDecoration(
                      labelText: 'Логин',
                      labelStyle: TextStyle(
                        fontFamily: 'Impact',
                        fontSize: 16,
                      ),
                      border: GradientOutlineInputBorder(
                          width: 3,
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(int.parse('0xFFFF069C')),
                                Color(int.parse('0x99FF0330')),
                                Color(int.parse('0xffFF5F06'))
                              ]))),
                ),
              ),
/*
Текстовое поле для пароля
 */
              Padding(
                padding:
                    const EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0),
                child: TextField(
                  obscureText: obscurePassword,
                  controller: _passwordController,
                  decoration: InputDecoration(
                      labelText: 'Пароль',
                      labelStyle: TextStyle(
                        fontFamily: 'Impact',
                        fontSize: 16,
                      ),
                      border: GradientOutlineInputBorder(
                          width: 3,
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(int.parse('0xFFFF069C')),
                                Color(int.parse('0x99FF0330')),
                                Color(int.parse('0xffFF5F06'))
                              ])),
                      suffixIcon: IconButton(
                        icon: Icon(
                            obscurePassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.deepOrange),
                        onPressed: () =>
                            setState(() => obscurePassword = !obscurePassword),
                      )),
                ),
              ),
/*
Кнопка входа
 */
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Material(
                  color: Colors.transparent,
                  shape: shape,
                  elevation: 8,
                  child: Container(
                    decoration: ShapeDecoration(
                        shape: shape,
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(int.parse('0xFFFF069C')),
                              Color(int.parse('0x99FF0330')),
                              Color(int.parse('0xffFF5F06'))
                            ])),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 60, vertical: 10),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent,
                          elevation: 0),
                      child: Text(
                        "Войти",
                        style: TextStyle(fontFamily: 'Impact', fontSize: 16.0),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/NavigationBar');
                      },
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 35.0,top: 20.0),
              child:
              Row(
                children: <Widget>[
                  Checkbox(
                      value: _agreement,
                      activeColor: Colors.pink,
                      onChanged: (newValue) {
                        setState(() {
                          _agreement = newValue!;
                        });
                      }),
                  SizedBox(height: 20.0,),
                  Text(
                    "Использовать отпечаток",
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 16.0,
                      color: _agreement ? Colors.pink : Colors.black
                    ),
                  )
                ],
              ),
              ),

              /*
 Свяжитесь с нами!
   */

              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 40.0),
                child: Row(
                  children: [
                    Text(
                      'Свяжитесь с нами!',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontFamily: 'Impact'),
                    ),

/*
Кнопка Instagram
 */
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/picture/Instagram.png',
                            width: 200,
                            height: 200,
                          )),
                    ),
/*
Кнопка Telegram
 */
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/picture/Telegram.png',
                            width: 200,
                            height: 200,
                          )),
                    ),
/*
Кнопка WhatsApp
 */
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/picture/Whatsapp.png',
                            width: 200,
                            height: 200,
                          )),
                    ),
                  ],
                ),
              ),

/*
Условия публичной оферты
 */
              Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 60.0),
                  child: Row(
                    children: [
                      Text(
                        "Я согласен с условиями ",
                        style: TextStyle(fontSize: 12.0),
                      ),
/*
Кнопка для публичной оферты
 */
                      TextButton(
                          onPressed: () async {
                            if (!await launchUrl(_url)) {
                              throw 'Could not launch $_url';
                            }

                          },
                          child: Text(
                            'Публичной оферты',
                            style: TextStyle(
                                fontSize: 12.0,
                                decoration: TextDecoration.underline,
                                color: Color(int.parse('0xFF0083CD'))),
                          ))
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
