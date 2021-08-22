import 'package:flutter/material.dart';
import 'package:places/gatewayofindia.dart';
import 'package:places/golconda.dart';
import 'package:places/goldencity.dart';
import 'package:places/goldentemple.dart';
import 'package:places/redfort.dart';
import 'package:places/tajmahal.dart';
import 'package:places/varanasi.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Surf the place'),
        backgroundColor: Colors.indigo.shade400,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 20.0),
        Text(
          'These are the different locations, which you can opt',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 20.0),
        Expanded(
          child: Container(
            child: ListView(
              children: [
                Golconda(),
                SizedBox(
                  height: 20.0,
                ),
                /*Golconda1(),
                SizedBox(
                  height: 20.0,
                ),*/
                Varanasi(),
                SizedBox(
                  height: 20.0,
                ),
                Goldencity(),
                SizedBox(
                  height: 20.0,
                ),
                Redfort(),
                SizedBox(
                  height: 20.0,
                ),
                Goldentemple(),
                SizedBox(
                  height: 20.0,
                ),
                Tajmahal(),
                SizedBox(
                  height: 20.0,
                ),
                GatewayofIndia(),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
