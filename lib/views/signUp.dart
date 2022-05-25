import 'package:flutter/material.dart';
import 'package:sante/homePage.dart';

class signUp extends StatelessWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(" sign Up "),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
        leading: IconButton(
          onPressed: (() {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (_) => (const MyHomePage(
                      title: 'hauOOra',
                    ))));
          }),
          icon: Icon(Icons.arrow_left_outlined),
          iconSize: 45,
          color: Colors.black,
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 50.0,
          horizontal: 30.0,
        ),
        child: Form(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                  'assets/images/healthcare1.png',
                  height: 100,
                  width: 100,
                ),
                Center(
                  child: Text('Add a account here',
                      style: Theme.of(context).textTheme.titleLarge),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: 'Nom',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: 'Prénom',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: "Date De Naissance",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Pays',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Ville',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'adresse postal',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Téléphone',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    labelText: 'Occupation',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Mot De Passe',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Confirmer Le Mot De Passe',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 15.0),
                Center(
                  child: Text(
                    "Health Details",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.green,
                        fontSize: 35),
                  ),
                ),
              ]),
        ),
      )),
    );
  }
}
