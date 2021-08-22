import 'package:flutter/material.dart';
import 'package:places/reviewscard.dart';
import 'package:url_launcher/url_launcher.dart';

class Goldentemple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Golden Temple'),
            subtitle: Text(
                'The main attraction here is Harmandir Sahib, opened in 1604 and still often referred to as the Golden Temple for its beautiful gold decoration.'),
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
                          builder: (context) => Goldentemplepage()));
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

class Goldentemplepage extends StatelessWidget {
  @override
  String url = 'https://www.goldentempleamritsar.org/';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Golden Temple'),
        ),
        body: ListView(children: [
          Image.asset(
            'assets/images/goldentemple.jpg',
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
                          'Golden Temple',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Amritsar, India',
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
                'Founded in 1577 by Ram Das, Amritsar is an important hub of Sikh history and culture. The main attraction here is Harmandir Sahib, opened in 1604 and still often referred to as the Golden Temple for its beautiful gold decoration. The holiest of Indias many Sikh shrines (it also attracts many Hindus and people of other faiths), the temple was built in a blend of Hindu and Islamic styles, its lower marble section featuring such flourishes as ornate inlaid floral and animal motifs, while the large golden dome represents a lotus flower, a symbol of purity to Sikhs. In addition to its splendid design, visitors are equally impressed with the temples spiritual atmosphere, an effect enhanced by the prayers continuously chanted from the Sikh holy book and broadcast throughout the complex. Part of the overall experience-and visitors are welcome to participate-is the chance to enjoy one of the 50,000 free meals the attraction serves up to visitors each and every day.'),
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
