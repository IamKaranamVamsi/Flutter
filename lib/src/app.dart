import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/registration.dart';


class AppScreen extends StatefulWidget
{
  createState()
  {
    return AppScreenState();
  }
}

class AppScreenState extends State<AppScreen> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    Text('About SASTRA'),
    Text('DAFAQ and MAVERICK'),
  ];

  Widget build(context) {
    return MaterialApp(
    home:Scaffold(
      //backgroundColor: Colors.tealAccent,

      appBar: AppBar(
        title: Text("LoCaL GeNiE"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.format_list_bulleted),
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));},
          ),
        ],
      ),

      body: Center(
        child: _children[_currentIndex],
      ),


      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.account_balance),
            title: new Text('Sastra'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              title: Text('About us')
          )
        ],

        onTap: onTabTapped,
      ),

     ),
      );
  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
