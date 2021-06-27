import 'package:flutter/material.dart';
import './dashboard.dart';
import './questionsmain.dart';
import './result.dart';
import './prof.dart';

class QuizCard extends StatefulWidget {
  int score;
  QuizCard(this.score);

  @override
  _QuizCardState createState() => _QuizCardState(score);
}

class _QuizCardState extends State<QuizCard> {
  int s;
  _QuizCardState(this.s);

  bool _isVisible = true;
  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  static int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int check() {
    if (_counter > 0) {
      return 1;
    } else {
      return 0;
    }
  }

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
                  MaterialPageRoute(builder: (context) => Dashboard(s, check())),
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
          Container(
            child: Visibility(
              visible: _isVisible,
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Ready to answer a few questions?'),
                      subtitle: Text('It will take a minute or two.'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('YES!'),
                          onPressed: () {
                            _incrementCounter();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Qmainclass()),
                            );
                            showToast();
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('Not Now'),
                          onPressed: showToast,
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(child: _counter > 0 ? Result(s) : Container())
        ],
      ),
    );
  }
}
