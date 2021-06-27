import 'dart:ui';
import './prof.dart';
import 'package:flutter/material.dart';
import './tasks.dart';
import './dashboard.dart';

class Home extends StatefulWidget {
  
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ELEVATE-UP'),
        backgroundColor: Color(0xFF00E676),
        centerTitle: true,
        elevation: 25,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 100,
              child: Center(child: Icon(Icons.healing)),
            ),
            TextButton(
                  child: Text('Tasks'),
                  onPressed: () {
                    Navigator.push( context, MaterialPageRoute(builder: (context) => QuizCard(-1)), );
                  },
            ),
            TextButton(
                  child: Text('Dashboard'),
                  onPressed: () {
                    Navigator.push( context, MaterialPageRoute(builder: (context) => Dashboard(-1, 0)), );
                  },
            ),
            TextButton(
              child: Text('Get Professional Help'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Help()),
                );
              },
            ),
            Container(
              height: 50,
              child: Center(child: Text('Log Out')),
            ),
          ],
        ),
      ),
      body: Center(
        //child: _widgetOptions.elementAt(_selectedIndex),
      ),
      /*
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Task',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      */
    );
  }
}
