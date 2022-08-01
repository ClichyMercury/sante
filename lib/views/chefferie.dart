import 'package:flutter/material.dart';

import '../homePage.dart';

class chefferie extends StatefulWidget {
  const chefferie({Key? key}) : super(key: key);

  @override
  State<chefferie> createState() => _chefferieState();
}

class _chefferieState extends State<chefferie> {
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
        title: Text("chefferie", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Text(
          'chefferie',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
