import 'package:flutter/material.dart';
import 'package:flutter_flip/components/card_row.dart';
import 'package:flutter_flip/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlipCard',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flip Card'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<CardTypes> arr;
  String _timeString;

  @override
  void initState() {}

  _renderBg() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
//        image: DecorationImage(
//          image: AssetImage('images/WCUGoldenRams.png'),
//          fit: BoxFit.cover,
//          colorFilter: ColorFilter.mode(
//              Colors.white.withOpacity(0.8), BlendMode.dstATop),
//        ),
      ),
    );
  }

  _renderAppBar(context) {
    return MediaQuery.removePadding(
      context: context,
      removeBottom: true,
      child: AppBar(
        brightness: Brightness.dark,
        elevation: 0.0,
        backgroundColor: Color(0x00FFFFFF),
      ),
    );
  }

  _renderContent(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CardRow(start: 0, arr: arr),
        CardRow(start: 1, arr: arr),
        CardRow(start: 2, arr: arr),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    arr = CardTypes.values.expand((i) => [i, i]).toList();
    arr.shuffle();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _renderBg(),
          Column(
            children: <Widget>[
              _renderAppBar(context),
              Expanded(
                flex: 4,
                child: _renderContent(context),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
            ],
          )
        ],
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
