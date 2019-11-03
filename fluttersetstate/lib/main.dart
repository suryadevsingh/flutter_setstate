import 'package:flutter/material.dart';
import 'package:fluttersetstate/requestBloc.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

int number;

EdgeInsets globalMargin = const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0);
TextStyle textStyle = const TextStyle(
  fontSize: 100.0,
  color: Colors.black,
);

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override`
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  RequestSwipeBloc gettar =RequestSwipeBloc();
  @override
  void initState() {
    super.initState();
    number = number ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Column(
        children: <Widget>[
          new Text(
            gettar.index.toString(),
            style: textStyle,
          ),
          new InkResponse(
            child: new Container(
                margin: globalMargin,
                color: Colors.green,
                child: new Center(
                  child: new Text(
                    "+",
                    style: textStyle,
                  ),
                )),
            onTap: () {
              /*  setState(() {
                    number = number + 1;
                  });*/
              setState(() {
                gettar.index = 4;
              });
            },
          ),
          new InkResponse(
            child: new Container(
                margin: globalMargin,
                color: Colors.red,
                child: new Center(
                  child: new Text(
                    "s",
                    style: textStyle,
                  ),
                )),
            onTap: () {
              /*  setState(() {
                    number = number + 1;
                  });*/
             setState(() {
               gettar.index = 6;
             });
            },
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: ()
        {

        },
        child: new Icon(Icons.update),
      ),
    );
  }
}

