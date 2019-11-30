import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

var loggerNoStack = Logger(
  printer: PrettyPrinter(methodCount: 0),
);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    void _pressAction() {
      logger.d("Pressd !!!!!!");
    }

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          // child: Text('Hello World'),
          // child: Text(wordPair.asPascalCase),
          child: RandomWords(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _pressAction,
          tooltip: 'heheda',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class RandomWordsState extends State<RandomWords> {
  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        // style: _biggerFont,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // log("word pair " + wordPair.asString);
    // return Text(wordPair.asPascalCase);
    final _suggestions = <WordPair>[];

    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          loggerNoStack.v("i is " + i.toString());
          if (i.isOdd) return Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_suggestions[index]);
        });
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}
