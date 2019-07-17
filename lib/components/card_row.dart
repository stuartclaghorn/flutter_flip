import 'package:flutter/material.dart';
import 'package:flutter_flip/components/playing_card.dart';
import 'package:flutter_flip/constants.dart';

class CardRow extends StatelessWidget {
  CardRow({this.start, this.arr});

  final int start;
  final List arr;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        children: <Widget>[
          PlayingCard(face: start, cardType: arr[start]),
          PlayingCard(face: start + 1, cardType: arr[start + 1]),
          PlayingCard(face: start + 2, cardType: arr[start + 2]),
        ],
      ),
    );
  }
}
