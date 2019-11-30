import 'package:flutter/material.dart';
import 'package:layout1/buttonarea.dart';
import 'package:layout1/entry.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'layout! Demo',
      // home: titleSection,

	  //  内容只有放在Material() 中才有material的风格  //仅仅MaterialApp是不够的
      home: Material(
        child: ListView(
        children: [
			Image.asset(
				'assets/Oeschinensee.jpg',
				// width: 240,
				// height: 400,
				fit: BoxFit.contain,
			),		  
          titleSection,
          MyButtonArea(),
          textSection,
        ],
      )),
    );
  }
}
