import 'package:flutter/material.dart';
import 'package:places/reviews.dart';
import 'package:places/reviewscard.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchURLBrowser() async {
  String url = 'https://www.google.com/';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      universalLinksOnly: false,
      enableDomStorage: false,
      enableJavaScript: false,
      headers: <String, String>{'header_key': 'header_value'},
    );
  } else {
    throw ('Could not launch $url');
  }
}

class GatewayofIndia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Gateway of India'),
            subtitle: Text(
                'Standing an impressive 26 meters tall and overlooking the Arabian Sea, the iconic Gateway of India is a must-see when in Mumbai.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const SizedBox(width: 8),
              TextButton(
                child: const Text(
                  'Click for more',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GatewayofIndiapage()));
                },
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}

class GatewayofIndiapage extends StatelessWidget {
  @override
  String url = 'https://mumbaicity.gov.in/tourist-place/gateway-of-india/';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Gateway of India'),
      ),
      body: ListView(children: [
        Image.asset(
          'assets/images/gatewayofindia.jpeg',
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.all(32),
          child: Row(
            children: [
              Expanded(
                /*1*/
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*2*/
                    Container(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: const Text(
                        'GateWay of India',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'Mumbai, India',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
              /*3*/
              Icon(
                Icons.star,
                color: Colors.red[500],
              ),
              const Text('61'),
            ],
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _buildButtonColumn(Colors.deepOrange, Icons.call, 'CALL'),
          _buildButtonColumn(Colors.cyan, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(Colors.amberAccent, Icons.share, 'SHARE'),
        ]),
        Padding(
          padding: EdgeInsets.all(32),
          child: Text(
              'The Gateway of India is an arch-monument built in the early 20th century in the city of Mumbai, India. It was erected to commemorate the landing in December 1911 at Wellington Pier, Mumbai of King-Emperor George V and Queen-Empress Mary, the first British monarch to visit India. At the time of the royal visit, the gateway was not yet built, and a cardboard structure greeted the monarch. The foundation stone was laid in March 1913 for a monument built in the Indo-Saracenic style, incorporating elements of 16th-century Gujarati architecture. The final design of the monument by architect George Wittet was sanctioned only in 1914, and construction was completed in 1924. The structure is a triumphal arch made of basalt, which is 26 metres (85 feet) high.It is an effort from the architect George Wittet.'),
        ),
        ElevatedButton(
          onPressed: () {
            launch(url);
          },
          child: Text('Click for more information'),
        ),
        Reviewscard(),
      ]),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}
