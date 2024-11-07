import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_ui/PageOne.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes UI',
      home: Pageone(),

    );
  }
}