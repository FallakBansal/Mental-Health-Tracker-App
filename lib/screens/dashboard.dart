import 'package:flutter/material.dart';
import './tasks.dart';
import './prof.dart';

class Dashboard extends StatefulWidget {
  int score;
  int ifYes;
  Dashboard(this.score, this.ifYes);

  @override
  _DashboardState createState() => _DashboardState(score, ifYes);
}

class _DashboardState extends State<Dashboard> {
  int s;
  int yes;
  _DashboardState(this.s, this.yes);
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
                    MaterialPageRoute(builder: (context) => QuizCard(s)),
                  );
                },
              ),
              TextButton(
                child: Text('Dashboard'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard(s, yes)),
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
        body: Center(
          child: yes > 0
          ?Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text('You did a fantastic job.'),
                  subtitle: Text('First step in healing is revealing'),
                ),
              ],
            ),
          )
          :Container(
            child: Icon(Icons.favorite),
          )
        ));
  }
}
