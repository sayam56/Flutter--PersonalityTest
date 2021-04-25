import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resScore;
  final Function resetHandler;

  Result(this.resScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resScore <= 8) {
      resultText = 'You Are Awesome And You scored over 80%';
    } else if (resScore <= 12) {
      resultText = 'You are Pretty average for a person';
    } else if (resScore <= 16) {
      resultText = 'You should aspire to be a better human being';
    } else {
      resultText = 'You Should Get Arrested!! X| ';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent),
            textAlign: TextAlign.center,
          ),
          new Container(
              width: double.infinity,
              color: Colors.cyanAccent,
              margin: EdgeInsets.all(30),
              height: 100,
              child: RaisedButton(
                color: Colors.blueAccent,
                child: Text(
                  'Restart The App',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                onPressed: resetHandler,
              )),
        ],
      ),
    );
  }
}
