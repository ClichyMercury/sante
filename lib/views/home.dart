import 'package:flutter/material.dart';
import 'package:sante/conponents/homebull.dart';
import 'package:sante/views/chefferie.dart';
import 'package:sante/views/profille.dart';
import 'package:sante/views/projetsociaux.dart';
import 'package:sante/views/utiles.dart';
import 'package:google_fonts/google_fonts.dart';

import 'agenda.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("AllaKro"),
        centerTitle: false,
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
              onPressed: (() {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => (profile())));
              }),
              icon: Icon(Icons.person, color: Colors.green))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('assets/images/allakro0.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 20,
                  bottom: 30,
                  child: Text(
                    'AllaKro Mon Village',
                    style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Homebull(
                      iconmod: (Icons.balance),
                      iconcolor: Colors.white,
                      iconsize: 60,
                      Titre: 'affaires',
                      titrecolor: Colors.white,
                      titresize: 45,
                      desc: "tBonnes affaires ici",
                      desccolor: Colors.white,
                      descsize: 12,
                      containercolor: Colors.purple,
                      boxcolor: Colors.green,
                      rad: 10,
                      lien: utiles(),
                      widthcontainer: 140,
                      heightContainer: 140,
                      context: context,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Homebull(
                      iconmod: (Icons.star_border_purple500),
                      iconcolor: Colors.white,
                      iconsize: 60,
                      Titre: 'Chefferie',
                      titrecolor: Colors.white,
                      titresize: 45,
                      desc: 'Contactez la chefferie',
                      desccolor: Colors.white,
                      descsize: 12,
                      containercolor: Colors.green,
                      boxcolor: Colors.purple,
                      rad: 10,
                      lien: chefferie(),
                      widthcontainer: 140,
                      heightContainer: 140,
                      context: context,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Homebull(
                      iconmod: (Icons.workspaces_outline),
                      iconcolor: Colors.white,
                      iconsize: 60,
                      Titre: 'Projet Sociaux',
                      titrecolor: Colors.white,
                      titresize: 45,
                      desc: "tous les projets du village",
                      desccolor: Colors.white,
                      descsize: 12,
                      containercolor: Colors.green,
                      boxcolor: Colors.purple,
                      rad: 10,
                      lien: projetSociaux(),
                      widthcontainer: 140,
                      heightContainer: 140,
                      context: context,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Homebull(
                      iconmod: (Icons.view_agenda_outlined),
                      iconcolor: Colors.white,
                      iconsize: 60,
                      Titre: 'Agenda',
                      titrecolor: Colors.white,
                      titresize: 45,
                      desc: 'evenements à venir',
                      desccolor: Colors.white,
                      descsize: 12,
                      containercolor: Colors.purple,
                      boxcolor: Colors.green,
                      rad: 10,
                      lien: agenda(),
                      widthcontainer: 140,
                      heightContainer: 140,
                      context: context,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ));
}
