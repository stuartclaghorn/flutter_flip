import 'package:flutter/material.dart';
import 'package:flutter_flip/components/playing_card.dart';

class CardRow extends StatelessWidget {
  CardRow({this.start});

  final int start;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        children: <Widget>[
          PlayingCard(face: start),
          PlayingCard(face: start + 1),
          PlayingCard(face: start),
        ],
      ),
    );
  }
}
