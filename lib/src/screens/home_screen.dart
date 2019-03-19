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

         /* Image.asset('Assests/canopy.jpg',
          width: 8.0,
          height: 250.0,),*/
         Text("\n"),
         Image.network("https://dcassetcdn.com/design_img/1015366/434253/434253_5607525_1015366_thumbnail.jpg"),

          Container(
            child: Row(
              children: <Widget>[
                Text("                         "),
                loginField(),
                Text("       "),
                registerField(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget loginField()
  {
  return RaisedButton(
    color:Colors.blue,
    child:Text("Login"),
    onPressed: ()
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
    },
  );
  }

  Widget registerField()
  {
    return RaisedButton(
      color: Colors.blue,
      child:Text("Register"),
      onPressed: ()
      {
        Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
      }
    );
  }
}
