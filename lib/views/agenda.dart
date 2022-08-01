import 'package:flutter/material.dart';

import '../homePage.dart';

class agenda extends StatefulWidget {
  const agenda({Key? key}) : super(key: key);

  @override
  State<agenda> createState() => _agendaState();
}

class _agendaState extends State<agenda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
        elevation: 0,
        title: Text("agenda", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Text(
          'agenda',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
