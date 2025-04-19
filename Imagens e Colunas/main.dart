import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false,
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sejam bem vindos!'),
        centerTitle: true,
        backgroundColor: Colors.green[900],
        foregroundColor: Colors.yellow,
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Image.asset('assets/montanhas.jpg'),
            flex: 3,
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.red,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.brown,
              child: Text('3'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Clicado');
        },
        child: Text('Clique'),
        backgroundColor: Colors.indigo[900],
        foregroundColor: Colors.indigoAccent[100],
      ),
    );
  }
}
