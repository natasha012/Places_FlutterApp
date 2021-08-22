import 'package:flutter/material.dart';
import 'package:places/reviewscard.dart';
import 'package:url_launcher/url_launcher.dart';

class Goldencity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Golden City'),
            subtitle: Text(
                'So named for the yellow sandstone used in most of its buildings, the Golden City of Jaisalmer is an oasis of splendid old architecture that rises from the sand dunes of the Thar Desert.'),
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
                          builder: (context) => Goldencitypage()));
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

class Goldencitypage extends StatelessWidget {
  @override
  String url = 'https://www.cityofgolden.net/';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Golden City'),
        ),
        body: ListView(children: [
          Image.asset(
            'assets/images/goldencity.jpg',
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
                          'Golden City',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Jaisalmar, India',
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
                'Jaisalmer About this soundpronunciation (help·info), nicknamed "The Golden city", is a city in the Indian state of Rajasthan, located 575 kilometres (357 mi) west of the state capital Jaipur. The town stands on a ridge of yellowish sandstone and is crowned by the ancient Jaisalmer Fort. This fort contains a royal palace and several ornate Jain temples. Many of the houses and temples of both the fort and of the town below are built of finely sculptured sandstone. The town lies in the heart of the Thar Desert (the Great Indian Desert) and has a population, including the residents of the fort, of about 78,000. It is the administrative headquarters of Jaisalmer District. Jaisalmer was once the capital of Jaisalmer State.'),
          ),
          ElevatedButton(
            onPressed: () {
              launch(url);
            },
            child: Text('Click for more information'),
          ),
          Reviewscard(),
        ]));
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
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}
