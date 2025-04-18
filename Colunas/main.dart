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
        backgroundColor: Colors.lime[900],
        foregroundColor: Colors.yellow[100],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
              children: <Widget>[
                Text('Esse aplicativo'),
                Text('está funcionando'),
              ],
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(40.0),
              color: Colors.greenAccent,
              child: Text('Um'),
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(35.0),
                color: Colors.redAccent,
                child: Text('Dois'),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.indigoAccent,
            child: Text('Três'),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.brown,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Quatro'),
            ),
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
