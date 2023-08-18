import 'package:flutter/material.dart';

const kTempTExtStyle = TextStyle(fontFamily: 'Spartan', fontSize: 100.0);

const kMessageTextStyle = TextStyle(fontFamily: 'Spartan', fontSize: 60.0);

const kButttonTextStyle =
    TextStyle(fontFamily: 'Spartan', fontSize: 30.0, color: Colors.white);

const kConditionTextStyle = TextStyle(fontSize: 100.0);

const kINputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(Icons.location_city),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(color: Colors.grey),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide.none),
);
