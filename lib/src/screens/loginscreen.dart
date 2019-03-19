import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'content.dart';

class LoginScreen extends StatefulWidget
{
  createState()
  {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey=GlobalKey<FormState>();
  String em,pwd;
  GoogleSignIn googleauth=new GoogleSignIn();
  Widget build(context) {
    return MaterialApp(
      home:Scaffold(
        //backgroundColor: Colors.tealAccent,

        appBar: AppBar(
          title: Text("Canopy fOOd"),
        ),

        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Form(
                  key:formKey,
                  child:Column(
                    children: <Widget>[
                      Text("Hey, Welcome Buddy..;",
                        style: TextStyle(fontWeight: FontWeight.bold),),
                      emailField(),
                      passwordField(),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text("                         "),
                            submitField(),
                            Text("      "),
                            googleField(),
                          ],
                        ),
                      ),
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget emailField()
  {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration:InputDecoration(
          labelText: "Email Address",
          hintText: "12001505*@gmail.com"
      ),
      validator: (String value)
      {
        if(!(value.contains("@gmail.com")||value.contains("@GMAIL.COM"))){
          return "Please enter a valid email";
        }

      },
      onSaved: (String value)
      {
        print(value);
        em=value;
      },

    );
  }

  Widget passwordField()
  {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration:InputDecoration(
        labelText: "Password",
        hintText: "Aa9#",
      ),
      obscureText: true,
      validator: (String value)
      {
        if(value.length<=6)
          return "password must be atleast 6 characters";
      },
      onSaved: (String value)
      {
        print(value);
        pwd=value;
      },
    );
  }

  Widget submitField()
  {
    return RaisedButton(
      color:Colors.blue,
      child:Text("Submit"),
      onPressed: ()
      {
        /*DO VERIFICATION */
      },
    );
  }

  Widget googleField()
  {
    return RaisedButton(
        color: Colors.blue,
        child:Text("Google"),
        onPressed: ()
        {
          googleauth.signIn().then((result){
            result.authentication.then((googlekey){
              FirebaseAuth.instance.signInWithGoogle(idToken: googlekey.idToken, accessToken: googlekey.accessToken).then((signedInUser){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Contents()));
              }).catchError((E){print(E);});
            }).catchError((E){print(E);});
          }).catchError((e){print(e);});
        }
    );
  }

}
