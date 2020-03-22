import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text('Learn From Home'),
        centerTitle: true,
        backgroundColor: Colors.teal[700],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[

          Container(
            width: 300,
            height: 150,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Flutter Participants : $_count',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow[600],
                  ),
                ),
              ),
            ),
          ),

          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget>[

                Container(
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        _count++;
                      });
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.amber,
                  ),
                ),

                Container(
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        _count--;
                      });
                    },
                    child: Text(
                      'Subtract',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.amber,
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


