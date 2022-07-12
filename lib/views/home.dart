import 'package:flutter/material.dart';
import 'package:sante/views/profille.dart';
import '../conponents/NavigationDrawer.dart';

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
            actions: [
              IconButton(
                  onPressed: (() {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => (profile())));
                  }),
                  icon: Icon(Icons.person))
            ]),
        drawer: NavigationDrawerWidget(),
        body: Center(
          child: Text(
            'home',
            style: TextStyle(fontSize: 60),
          ),
        ),
      );
}
