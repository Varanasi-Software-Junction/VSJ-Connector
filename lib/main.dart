import 'package:flutter/material.dart';

void main() {
  runApp(const VsjApp());
}

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

class VsjHomePage extends StatefulWidget {
  const VsjHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<VsjHomePage> createState() => _VsjHomePageState();
}

class _VsjHomePageState extends State<VsjHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hi',
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
