import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  static const _questions = [
    {
      'questionText': 'What is the name of the artist who painted ‘Mona Lisa’?',
      'answers': [
        'Vincent van Gogh',
        'Pablo Picasso',
        'Leonardo da Vinci',
        'Michelangelo',
        'Salvador Dalí'
      ]
    },
    {
      'questionText': 'What is the capital of Brazil?',
      'answers': ['Brasilia', 'São Paulo', 'Pará', 'Rio de Janeiro']
    },
    {
      'questionText': 'In which year did the Beatles Band begin?',
      'answers': ['1958', '1963', '1961', '1960', '1957']
    },
    {
      'questionText': 'When was the first World War fought?',
      'answers': ['1914', '1907', '1909', '1910', '1912']
    },
    {
      'questionText': 'How many bones are there in the human body?',
      'answers': ['208', '202', '204', '203', '206']
    },
    {
      'questionText': 'What is the capital city of Canada?',
      'answers': ['Ottawa', 'Toronto', 'Montreal', 'Calgary', 'Vancouver']
    },
  ];

  void _answerQuestion() {
    setState(() {
      if (_index < (_questions.length - 1)) {
        _index = _index + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
          backgroundColor: Colors.pink,
        ),
        body: Column(
          children: [
            Question(
              _questions[_index]['questionText'].toString(),
            ),
            ...(_questions[_index]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
