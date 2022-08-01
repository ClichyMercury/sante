import 'package:flutter/material.dart';

import '../homePage.dart';

class gardePharm extends StatefulWidget {
  const gardePharm({Key? key}) : super(key: key);

  @override
  State<gardePharm> createState() => _gardePharmState();
}

class _gardePharmState extends State<gardePharm> {
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
        title:
            Text("Pharmacie de garde", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Text(
          'Pharmacie de garde',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
