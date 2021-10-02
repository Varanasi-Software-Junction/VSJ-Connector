import 'package:flutter/material.dart';
import 'package:vsjconnector/vsjhomepage.dart';

class VsjApp extends StatelessWidget {
  const VsjApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Varanasi Software Junction',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const VsjHomePage(title: 'Varanasi Software Junction'),
    );
  }
}
