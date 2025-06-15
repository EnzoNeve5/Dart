import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
  debugShowCheckedModeBanner: false,
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Steve Jobs', text: 'Decidir o que não fazer é tão importante como decidir o que fazer'),
    Quote(author: 'Confúcio', text: 'Escolhe um trabalho de que gostes e não terás que trabalhar nem um dia na tua vida'),
    Quote(author: 'Pitágoras', text: 'Educai as crianças para que não seja necessário punir os adultos')
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.indigoAccent
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.indigoAccent
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        title: Text('Mais citações incríveis'),
        centerTitle: true,
        backgroundColor: Colors.indigo[900],
        foregroundColor: Colors.indigo[100],
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
