import 'package:flutter/material.dart';
import 'package:places/reviewscard.dart';
import 'package:url_launcher/url_launcher.dart';

class Tajmahal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Taj Mahal'),
            subtitle: Text(
                'Taj Mahal is also the worlds most famous testimony to the power of love. Named after Mumtaz Mahal, the favorite wife of Emperor Shah Jahan.'),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tajmahalpage()));
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

class Tajmahalpage extends StatelessWidget {
  @override
  String url = 'https://www.tajmahal.gov.in/';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Taj Mahal'),
        ),
        body: ListView(children: [
          Image.asset(
            'assets/images/tajmahal.jpg',
            width: 600,
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
                          'Taj Mahal',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Agra, India',
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
                'Perhaps Indias most recognizable building, the Taj Mahal is also the worlds most famous testimony to the power of love. Named after Mumtaz Mahal, the favorite wife of Emperor Shah Jahan, this most beautiful of mausoleums was begun upon her death in 1631 and took 20,000 workmen until 1648 to complete. Incorporating many elements of Islamic design including arches, minarets, an onion-shaped dome, and black calligraphy inlaid around the entrance, the Taj Mahal is largely constructed of white marble decorated with delicate inlaid floral patterns and precious and semi-precious stones such as jade, lapis lazuli, diamonds, and mother of pearl.'),
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
