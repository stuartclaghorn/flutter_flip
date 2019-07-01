import 'package:flutter/material.dart';
import 'package:flutter_flip/flip_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
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
              Image.asset('images/WCUGoldenRams.png'),
              Text('Click here to flip back',
                  style: Theme.of(context).textTheme.body1),
            ],
          ),
        ),
        back: Container(
          decoration: BoxDecoration(
            color: Colors.purple, // Color(0xFF006666),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text('Back', style: Theme.of(context).textTheme.headline),
              DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/Philips_Hall.jpg'),
                    // ...
                  ),
                  // ...
                ),
              ),
              Text('Click here to flip front',
                  style: Theme.of(context).textTheme.body1),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
