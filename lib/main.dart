import 'package:flutter/material.dart';
import 'package:flutter_chat_app/screens/chat_screen.dart';
import 'package:flutter_chat_app/screens/login_screen.dart';
import 'package:flutter_chat_app/screens/register_screen.dart';
import 'package:flutter_chat_app/screens/welcome_screen.dart';

void main() {
  runApp(FlutterChat());
}

class FlutterChat extends StatelessWidget {
  const FlutterChat({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        )
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        LoginScreen.id:(context) => LoginScreen(),
        RegisterScreen.id:(context) =>RegisterScreen(),
        ChatScreen.id:(context) =>ChatScreen(),
      },
    );
  }
}

