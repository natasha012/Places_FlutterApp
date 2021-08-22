import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/reviews.dart';

class Reviewslist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Reviews(),
        SizedBox(
          width: 20.0,
        ),
        Reviews(),
      ],
    );
  }
}
