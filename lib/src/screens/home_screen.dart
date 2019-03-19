import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'registration.dart';
import 'loginscreen.dart';

class HomeScreen extends StatefulWidget
{
  createState()
  {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen>
{
  Widget build(context)
  {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
