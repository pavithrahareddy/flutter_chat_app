import 'package:flutter/material.dart';

const InputText = TextStyle(
  color: Colors.black
);
const InputBox = InputDecoration(
  hintStyle: TextStyle(
    color: Colors.black,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0))
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.orangeAccent,width: 1),
      borderRadius: BorderRadius.all(Radius.circular(32.0))
  ),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.orangeAccent,width: 2),
      borderRadius: BorderRadius.all(Radius.circular(32.0))
  ),
);