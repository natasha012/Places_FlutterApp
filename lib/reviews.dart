import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 32.0, left: 32.0, right: 32.0),
                    ),
                    Icon(Icons.account_circle),
                    Text(
                      ' Anshul Kumar',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 38.0,
                        right: 32,
                      ),
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
                      Icons.star,
                      color: Color(0xffffb300),
                    ),
                    Icon(
                      Icons.star_half,
                      color: Color(0xffffb300),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 38.0,
                    right: 32,
                  ),
                ),
                Text(
                  "This place is suberb which can be very fun if we were with our friends",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
