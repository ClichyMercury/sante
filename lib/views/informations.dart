import 'package:flutter/material.dart';

class info extends StatefulWidget {
  const info({Key? key}) : super(key: key);

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            title: Text("informations"),
            centerTitle: false,
            backgroundColor: Colors.green,
            actions: []),
        body: Center(
          child: Text(
            'info',
            style: TextStyle(fontSize: 60),
          ),
        ),
      );
}
