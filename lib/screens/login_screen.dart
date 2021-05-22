import 'package:flutter/material.dart';
import 'package:flutter_chat_app/constants/input_box.dart';
import 'package:flutter_chat_app/constants/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_chat_app/screens/chat_screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Hero(
                    tag: 'logo',
                    child: Center(
                      child: Image.asset(
                        'images/fleet.png',
                        height: 225,
                        width: 225,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    style: InputText,
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: InputBox.copyWith(
                      hintText: "Enter your email",
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    style: InputText,
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: InputBox.copyWith(
                      hintText: "Enter your password",
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RoundedButton(
                    title: 'LOGIN',
                    tcolor: Color.fromARGB(255, 202, 247, 227),
                    colour: Color.fromARGB(255, 255, 145, 70),
                    onPressed: () async {
                      setState(() {
                        showSpinner = true;
                      });
                      try {
                        final user = await _auth.signInWithEmailAndPassword(
                            email: email, password: password);
                        if (user != null) {
                          Navigator.pushNamed(context, ChatScreen.id);
                        }
                        setState(() {
                          showSpinner = false;
                        });
                      } catch (e) {
                        print(e);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
