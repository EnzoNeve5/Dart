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
        backgroundColor: Colors.green[600],
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(15.0, 30.0, 45.0, 60.0),
        margin: EdgeInsets.all(150.0),
        color: Colors.lightBlueAccent[100],
        child: Text('Olá'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Clicado');
        },
        child: Text('Clique'),
        backgroundColor: Colors.orange[900],
        foregroundColor: Colors.white,
      ),
    );
  }
}
