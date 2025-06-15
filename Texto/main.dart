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
    Quote(author: 'Sócrates', text: 'Só sei que nada sei'),
    Quote(author: 'Charles Darwin', text: 'Não é o mais forte que sobrevive, nem o mais inteligente, quem sobrevive é o mais disposto à mudança'),
    Quote(author: 'Martin Luther King', text: 'Eu tenho um sonho. O sonho de ver meus filhos julgados por sua personalidade, não pela cor de sua pele')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('Citações incríveis'),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
      ),
    );
  }
}
