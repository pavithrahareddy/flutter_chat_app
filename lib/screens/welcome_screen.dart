import 'package:flutter/material.dart';
import 'package:flutter_chat_app/constants/rounded_button.dart';
import 'package:flutter_chat_app/screens/login_screen.dart';
import 'package:flutter_chat_app/screens/register_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=AnimationController(vsync: this,duration: Duration(seconds: 1));
    controller.forward();
    controller.addListener(() {
      setState(() {
      });
      print(controller.value);
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Center(
                child: Image.asset('images/fleet.png',
                height: 350,
                  width: 350,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .40,
              child: Container(
                child: RoundedButton(
                  title: 'LOGIN',
                  tcolor: Color.fromARGB(255, 202, 247, 227),
                  colour: Color.fromARGB(255, 255, 145, 70),
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .55,
              child: Container(
                child: RoundedButton(
                  title: 'REGISTER',
                  colour: Color.fromARGB(255, 67,182,47),
                  tcolor: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterScreen.id);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
