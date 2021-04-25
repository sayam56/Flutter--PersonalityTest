import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerSelect;
  final String answerText;
  Answer(this.answerSelect, this.answerText);

 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: answerSelect,
      ),
    );
  }
}
