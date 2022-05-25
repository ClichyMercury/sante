import 'package:flutter/material.dart';
import 'package:sante/views/carte.dart';
import 'package:sante/views/home.dart';
import 'package:sante/views/informations.dart';
import 'package:sante/views/profille.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final screens = [home(), carte(), info(), profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        iconSize: 35,
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'location',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'info',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'profile',
              backgroundColor: Colors.amber),
        ],
      ),
    );
  }
}
