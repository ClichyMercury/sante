import 'package:flutter/material.dart';

class News extends StatelessWidget {
  final String? copyrightsText;

  News({Key? key, @required this.copyrightsText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TomTom Maps API - Copyrights"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.all(20), child: Text(copyrightsText!)),
            )),
          ],
        ),
      ),
    );
  }
}
