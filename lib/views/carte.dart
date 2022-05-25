import 'package:flutter/material.dart';

class carte extends StatefulWidget {
  const carte({Key? key}) : super(key: key);

  @override
  State<carte> createState() => _carteState();
}

class _carteState extends State<carte> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            title: Text("carte"),
            centerTitle: false,
            backgroundColor: Colors.green,
            actions: []),
        body: Center(
          child: Text(
            'map',
            style: TextStyle(fontSize: 60),
          ),
        ),
      );
}
