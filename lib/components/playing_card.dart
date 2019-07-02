import 'package:flutter/material.dart';
import 'package:flutter_flip/components/flip_card.dart';
import 'package:flutter_flip/constants.dart';

class PlayingCard extends StatelessWidget {
  PlayingCard({this.face});

  final int face;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 0.0,
        margin:
            EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 0.0),
        color: Color(0x00000000),
        child: FlipCard(
          direction: FlipDirection.HORIZONTAL,
          front: Container(
            decoration: BoxDecoration(
              color: Colors.white, // Color(0xFF006666),
              border: Border.all(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Text('Front', style: Theme.of(context).textTheme.headline),
                Image.asset(backImageName),
                // Text('Click here to flip back',
                //style: Theme.of(context).textTheme.body1),
              ],
            ),
          ),
          back: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.purple, // Color(0xFF006666),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Image.asset(faceImageNames[face]),
                ),
                // ...
                Expanded(
                  flex: 1,
                  child: Text(
                    labels[face],
                    style: TextStyle(
                      color: Colors.amberAccent,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
