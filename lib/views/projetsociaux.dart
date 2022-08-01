import 'package:flutter/material.dart';

import '../homePage.dart';

class projetSociaux extends StatefulWidget {
  const projetSociaux({Key? key}) : super(key: key);

  @override
  State<projetSociaux> createState() => _projetSociauxState();
}

class _projetSociauxState extends State<projetSociaux> {
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
        title: Text("Projet Sociaux", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Text(
          'Projet Sociaux',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
