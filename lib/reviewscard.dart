import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reviewscard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(
              Icons.account_circle,
            ),
            title: Text('Anshul Kumar'),
            subtitle: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Color(0xffffb300),
                ),
                Icon(
                  Icons.star,
                  color: Color(0xffffb300),
                ),
                Icon(
                  Icons.star,
                  color: Color(0xffffb300),
                ),
                Icon(
                  Icons.star,
                  color: Color(0xffffb300),
                ),
                Icon(
                  Icons.star_half,
                  color: Color(0xffffb300),
                ),
                Text('This is heartwarming.'),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_circle,
            ),
            title: Text('Vivek Reddy'),
            subtitle: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Color(0xffffb300),
                ),
                Icon(
                  Icons.star,
                  color: Color(0xffffb300),
                ),
                Icon(
                  Icons.star,
                  color: Color(0xffffb300),
                ),
                Icon(
                  Icons.star,
                  color: Color(0xffffb300),
                ),
                Icon(
                  Icons.star_half,
                  color: Color(0xffffb300),
                ),
                Text('It is a feel good place.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
