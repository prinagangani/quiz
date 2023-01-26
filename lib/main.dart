import 'package:flutter/material.dart';
import 'package:quiz/second.dart';
import 'package:quiz/third.dart';
import 'first.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context)=> First(),
        'output': (context)=> Second(),
        'winner': (context)=> Third(),
      },
    ),
  );
}