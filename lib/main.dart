import 'package:flutter/material.dart';
import 'package:myapp/quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'The only thing we have ', author: 'author 1'),
    Quote(text: 'The truth will set you free', author: 'author 2'),
    Quote(text: 'Three can keep a secret', author: 'author 3'),
    Quote(text: 'The greatest glory in living lies ', author: 'author 4'),
  ];

  Widget quoteTemplete(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14, color: Colors.grey[800]),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Title of the app'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplete(quote)).toList(),
      ),
    );
  }
}
