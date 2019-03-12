import 'package:flutter/material.dart';

String email;
class LoggedIn extends StatefulWidget
{
  LoggedIn(String value)
  {
    email=value;
  }
  createState()
  {
    return LoggedInScreen();
  }
}

class LoggedInScreen extends State<LoggedIn> {
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
          child:Column(
            children: <Widget>[
              Text("Welcome $email"),
              RaisedButton(
                color: Colors.blue,
                child: Text("back"),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ],
          )
      ),
    );
  }
}