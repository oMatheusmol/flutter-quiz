import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
