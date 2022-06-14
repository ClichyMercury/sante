import 'package:flutter/material.dart';
import 'package:sante/views/signUp.dart';
import 'package:sante/homePage.dart';
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            title: Text("Profile"),
            centerTitle: false,
            backgroundColor: Colors.green,
            actions: []),
        body: Container(
          padding: EdgeInsets.symmetric(
            vertical: 50.0,
            horizontal: 30.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/healthcare1.png"),
              SizedBox(height: 25.0),
              Text(
                "log in",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 15.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "E-mail",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "mot de passe",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 136, 198, 138), // background
                  onPrimary: Colors.black, // foreground
                ),
                onPressed: (() {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => (const MyHomePage(title: 'hauOOra'))));
                  }),
                child: Text('Log in'),
              ),
              SizedBox(height: 115.0),
              FloatingActionButton(
                  child: Icon(Icons.add, color: Colors.black),
                  backgroundColor: Colors.green,
                  hoverColor: Colors.red.shade400,
                  onPressed: (() {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => (signUp())));
                  }))
            ],
          ),
        ),
      );
}
