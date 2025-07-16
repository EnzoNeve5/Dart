import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
  debugShowCheckedModeBanner: false,
)); // MaterialApp

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'XXXXXXX', text: 'Bds fesa ges geerg ffaesßedg'),
    Quote(author: 'YYYYYYY', text: 'Idhw wdfuih fuhnw wfufw fwwf'),
    Quote(author: 'ZZZZZZZ', text: 'Lfefi efwi feeb ewuihife few')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar (
        title: Text('Citações'),
        centerTitle: true,
        backgroundColor: Colors.yellow[200],
      ), // AppBar
      body: Column (
        children: quotes.map ((quote) => QuoteCard(quote: quote)).toList(),
      ) // Column
    );
  }
}
