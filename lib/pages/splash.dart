import 'package:flutter/material.dart';
import '../store/userstore.dart';

class Spalsh extends StatefulWidget {
  @override
  _SpalshState createState() => _SpalshState();
}

class _SpalshState extends State<Spalsh> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Loading')],
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
