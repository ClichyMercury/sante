import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            title: Text("hauOOra"),
            centerTitle: false,
            backgroundColor: Colors.green,
            actions: []),
        body: Center(
          child: Text(
            'home',
            style: TextStyle(fontSize: 60),
          ),
        ),
      );
}
