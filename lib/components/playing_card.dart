import 'package:flutter/material.dart';
import 'package:flutter_flip/components/flip_card.dart';
import 'package:flutter_flip/constants.dart';

class PlayingCard extends StatelessWidget {
  PlayingCard({this.face, this.cardType});

  final int face;
  final CardTypes cardType;

  IconData getFace(var cardType) {
    print(cardType);
//    print(CardTypes.boat);
//    print(CardTypes.boat.index);
    switch (cardType.index) {
      case 0:
        return Icons.directions_boat;
      case 1:
        return Icons.directions_car;
      case 2:
        return Icons.directions_railway;
      default:
        return Icons.directions_walk;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 0.0,
        margin:
            EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 0.0),
        color: Color(0x00000000),
        child: FlipCard(
          cardType: cardType,
          direction: FlipDirection.HORIZONTAL,
          front: Container(
            decoration: BoxDecoration(
              color: Colors.white, // Color(0xFF006666),
              border: Border.all(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Center(
              child: Icon(
                Icons.star_border,
                size: 80.0,
                color: Colors.amberAccent,
              ),
            ),
          ),
          back: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white, // Color(0xFF006666),
              border: Border.all(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Center(
              child: Icon(
                getFace(cardType),
                size: 80.0,
                color: Colors.lightBlueAccent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
