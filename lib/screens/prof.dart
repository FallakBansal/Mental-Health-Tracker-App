import 'package:flutter/material.dart';
import './dashboard.dart';
import './tasks.dart';
import '../src/pages/index.dart';

class Help extends StatelessWidget {
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizCard(-1)),
                );
              },
            ),
            TextButton(
              child: Text('Dashboard'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard(-1, 0)),
                );
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
      body: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.phone),
            title: Text('Lets talk to Dr. X'),
            subtitle: Text('First step in healing is revealing'),
          ),
          const ListTile(
            leading: Icon(Icons.call),
            title: Text('Lets talk to Dr. Y.'),
            subtitle: Text('First step in healing is revealing'),
          ),
          const ListTile(
            leading: Icon(Icons.call),
            title: Text('Lets talk to Dr. Z'),
            subtitle: Text('First step in healing is revealing'),
          ),
          TextButton(
            onPressed: () {
              Text("Video Call channel ~ ElevateUP");
            },
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IndexPage()),
                );
              },
              child: Icon(Icons.video_call),
            ),
          )
        ],
      ),
    );
  }
}
