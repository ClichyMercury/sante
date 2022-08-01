import "package:flutter/material.dart";
import "package:flutter_map/flutter_map.dart";
import "package:latlong2/latlong.dart";
import "package:http/http.dart" as http;
import 'package:sante/views/garde_pharm.dart';
import "dart:convert" as convert;

import '../conponents/NavigationDrawer.dart';
import 'copyrightPage.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String apiKey = "exhHETBl3wCmdiUGotaFn5DjrXpy6SFL";

  @override
  Widget build(BuildContext context) {
    final LatLng tomtomHQ = new LatLng(5.3599517, -4.0082563);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "hauOOra",
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("Santé", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.green,
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.health_and_safety,
                color: Colors.purple,
              ),
            ),
            IconButton(
              onPressed: (() {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => (gardePharm())));
              }),
              icon: Icon(
                Icons.medical_information,
                color: Colors.purple,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.medical_services_rounded,
                color: Colors.purple,
              ),
            ),
          ],
        ),
        drawer: NavigationDrawerWidget(),
        body: Center(
            child: Stack(
          children: <Widget>[
            FlutterMap(
              options: MapOptions(center: tomtomHQ, zoom: 13.0),
              layers: [
                new TileLayerOptions(
                  urlTemplate: "https://api.tomtom.com/map/1/tile/basic/main/"
                      "{z}/{x}/{y}.png?key=exhHETBl3wCmdiUGotaFn5DjrXpy6SFL",
                  additionalOptions: {"apiKey": apiKey},
                ),
                new MarkerLayerOptions(
                  markers: [
                    new Marker(
                      width: 40.0,
                      height: 40.0,
                      point: new LatLng(5.3474093, -3.9978172),
                      builder: (BuildContext context) => const Icon(
                          Icons.medical_information,
                          size: 40.0,
                          color: Colors.orange),
                    ),
                    new Marker(
                      width: 40.0,
                      height: 40.0,
                      point: new LatLng(5.346051, -3.9958193),
                      builder: (BuildContext context) => const Icon(
                          Icons.medical_information,
                          size: 40.0,
                          color: Colors.orange),
                    ),
                    new Marker(
                      width: 40.0,
                      height: 40.0,
                      point: new LatLng(5.348892, 3.9983901),
                      builder: (BuildContext context) => const Icon(
                          Icons.medical_information,
                          size: 40.0,
                          color: Colors.orange),
                    ),
                  ],
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.bottomLeft,
                child: Image.asset(
                  "assets/images/tt_logo.png",
                  width: 30,
                  height: 30,
                ))
          ],
        )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          child: Icon(Icons.copyright),
          onPressed: () async {
            http.Response response = await getCopyrightsJSONResponse();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CopyrightsPage(
                        copyrightsText: parseCopyrightsResponse(response))));
          },
        ),
      ),
    );
  }

  Future<http.Response> getCopyrightsJSONResponse() async {
    var url = "https://api.tomtom.com/map/1/copyrights.json?key=$apiKey";
    var response = await http.get(Uri.parse(url));
    return response;
  }

  String parseCopyrightsResponse(http.Response response) {
    if (response.statusCode == 200) {
      StringBuffer stringBuffer = StringBuffer();
      var jsonResponse = convert.jsonDecode(response.body);
      parseGeneralCopyrights(jsonResponse, stringBuffer);
      parseRegionsCopyrights(jsonResponse, stringBuffer);
      return stringBuffer.toString();
    }
    return "Can't get copyrights";
  }

  void parseRegionsCopyrights(jsonResponse, StringBuffer sb) {
    List<dynamic> copyrightsRegions = jsonResponse["regions"];
    copyrightsRegions.forEach((element) {
      sb.writeln(element["country"]["label"]);
      List<dynamic> cpy = element["copyrights"];
      cpy.forEach((e) {
        sb.writeln(e);
      });
      sb.writeln("");
    });
  }

  void parseGeneralCopyrights(jsonResponse, StringBuffer sb) {
    List<dynamic> generalCopyrights = jsonResponse["generalCopyrights"];
    generalCopyrights.forEach((element) {
      sb.writeln(element);
      sb.writeln("");
    });
    sb.writeln("");
  }
}
