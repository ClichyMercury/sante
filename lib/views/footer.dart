import 'package:flutter/material.dart';

import '../conponents/NavigationDrawer.dart';
import '../homePage.dart';

class submit extends StatefulWidget {
  const submit({Key? key}) : super(key: key);

  @override
  State<submit> createState() => _submitState();
}

class _submitState extends State<submit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("submit", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
      ),
      drawer: NavigationDrawerWidget(),
      body: Center(
        child: Text(
          'submit',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
