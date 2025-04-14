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
        backgroundColor: Colors.blue[600],
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            print('Carregando imagem...');
          },
          icon: Icon(
            Icons.image
          ),
          label: Text('Imagem'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Clicado');
        },
        child: Text('Clique'),
        backgroundColor: Colors.teal[600],
        foregroundColor: Colors.white,
      ),
    );
  }
}
