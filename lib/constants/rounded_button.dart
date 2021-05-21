import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {this.title, this.colour, this.tcolor, @required this.onPressed});

  final Color colour;
  final Color tcolor;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 13.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(12.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 125.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              color: tcolor,
            ),
          ),
        ),
      ),
    );
  }
}
