import 'package:flutter/material.dart';
import 'package:places/reviewscard.dart';
import 'package:url_launcher/url_launcher.dart';

class Golconda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Golconda Fort'),
            subtitle: Text(
                'Golconda Fort is listed as an archaeological treasure on the official "List of Monuments" prepared by the Archaeological Survey of India '),
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
                      MaterialPageRoute(builder: (context) => Golcondapage()));
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

class Golcondapage extends StatelessWidget {
  @override
  String url =
      'https://www.telanganatourism.gov.in/partials/destinations/heritage-spots/hyderabad/golconda-fort.html';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Golconda Fort'),
        ),
        body: ListView(children: [
          Image.asset(
            'assets/images/golconda.jpg',
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
                          'Golconda Fort',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Hyderbad, India',
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
                const Text('41'),
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
                'Golconda Fort, also known as Golkonda (Telugu: "shepherds hill"), is a fortified citadel and an early capital city of the Qutb Shahi dynasty (c. 1512–1687), located in Hyderabad, Telangana, India. Because of the vicinity of diamond mines, especially Kollur Mine, Golconda flourished as a trade centre of large diamonds, known as the Golconda Diamonds. The region has produced some of the worlds most famous diamonds, including the colourless Koh-i-Noor (now owned by the United Kingdom), the blue Hope (United States), the pink Daria-i-Noor (Iran), the white Regent (France), the Dresden Green (Germany), and the colourless Orlov (Russia), Nizam and Jacob (India), as well as the now lost diamonds Florentine Yellow, Akbar Shah and Great Mogul.'),
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

// ignore: unused_element
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
