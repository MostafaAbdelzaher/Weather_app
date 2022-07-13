import 'package:flutter/material.dart';

const kTempTextStyle =
    TextStyle(fontFamily: 'Spartan MB', fontSize: 50.0, color: Colors.white);

const kMessageTextStyle =
    TextStyle(fontFamily: 'Spartan MB', fontSize: 40.0, color: Colors.white);

const kButtonTextStyle = TextStyle(
    fontSize: 30.0,
    fontFamily: 'Spartan MB',
    color: Colors.white,
    fontWeight: FontWeight.bold);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);
const kTextFieldInputDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    icon: Icon(
      Icons.location_city,
      color: Colors.white,
    ),
    hintText: "Enter City Name",
    hintStyle: TextStyle(color: Colors.grey),
    border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(10))));
