import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
  debugShowCheckedModeBanner: false,
)); // MaterialApp

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'AAAAAAA', text: 'Bfwfhwfßenefefeigerg gregeeg'),
    Quote(author: 'BBBBBBB', text: 'Ijw fef ewfegre gregre gregt'),
    Quote(author: 'CCCCCCC', text: 'Megwgçe geg hrehrg regedr re')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[800],
      appBar: AppBar (
        title: Text('Citações'),
        centerTitle: true,
        backgroundColor: Colors.brown[100],
      ), // AppBar
      body: Column (
        children: quotes.map ((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(),
      ) // Column
    );
  }
}
