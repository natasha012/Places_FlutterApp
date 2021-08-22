import 'package:flutter/material.dart';
import 'package:places/reviewscard.dart';
import 'package:url_launcher/url_launcher.dart';

class Redfort extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Red Fort'),
            subtitle: Text(
                'Built by Shah Jahan in 1648 as the seat of Mughal power-a role it maintained until 1857-the magnificent crescent-shaped Red Fort in New Delhi.'),
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
                      MaterialPageRoute(builder: (context) => Redfortpage()));
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

class Redfortpage extends StatelessWidget {
  @override
  String url =
      'https://delhitourism.gov.in/delhitourism/tourist_place/red_fort.jsp';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Red FOrt'),
        ),
        body: ListView(children: [
          Image.asset(
            'assets/images/redfort.jpg',
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
                          'Red fort',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Delhi, India',
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
                'Built by Shah Jahan in 1648 as the seat of Mughal power-a role it maintained until 1857-the magnificent crescent-shaped Red Fort in New Delhi, named after the stunning red sandstone used in its construction, covers a vast area of more than two square kilometers, all of it surrounded by a large moat. Highlights include its two largest gates: the impressive Lahore Gate (the forts main entrance) and the elaborately decorated Delhi Gate, once used by the emperor for ceremonial processions. A fun part of a visit is exploring Chatta Chowk, a 17th-century covered bazaar selling everything from jewelry to silk garments, as well as souvenirs and food items. While you can explore the fort yourself, guided tours are offered and provide a fascinating insight into the life and times of the Shah, including a peek into the stunning white marble Hall of Public Audiences (Diwan-i-Am) where he received his subjects.'),
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
