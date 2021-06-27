import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // color: Color(0xFF00E676),
        style: TextButton.styleFrom(primary: Colors.white),
        // textColor: Colors.white,
        child: Text(answerText),
        onPressed: () => selectHandler(),
      ), //RaisedButton
    ); //Container
  }
}
