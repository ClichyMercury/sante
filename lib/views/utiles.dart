import 'package:flutter/material.dart';
import 'package:sante/homePage.dart';

class utiles extends StatefulWidget {
  const utiles({Key? key}) : super(key: key);

  @override
  State<utiles> createState() => _utilesState();
}

class _utilesState extends State<utiles> {
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
        title: Text("bonnes affaires", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Text(
          'recherche des personnes utiles et des biens',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
