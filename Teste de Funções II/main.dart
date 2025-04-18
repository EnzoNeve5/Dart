import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sejam bem vindos!'),
        centerTitle: true,
        backgroundColor: Colors.lime[900],
        foregroundColor: Colors.yellow[100],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Clique em "Olá, Mundo!"'),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.deepPurple,
            ),
            onPressed: () { },
            child: Text('Olá, Mundo!'),
          ),
          Container(
            color: Colors.teal,
            padding: EdgeInsets.all(30.0),
            child: Text('Estou aqui...'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Clicado');
        },
        child: Text('Clique'),
        backgroundColor: Colors.deepOrange[900],
        foregroundColor: Colors.orangeAccent[100],
      ),
    );
  }
}
