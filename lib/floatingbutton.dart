import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
// Add your onPressed code here!
      },
      label: const Text('Love it'),
      icon: const Icon(Icons.thumb_up),
      backgroundColor: Colors.pink,
    );
  }
}
