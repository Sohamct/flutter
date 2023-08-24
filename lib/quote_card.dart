import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({required this.quote, required this.delete});

  final Quote quote;
  final VoidCallback delete;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: const TextStyle(
                fontSize: 23,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              quote.author,
              style: const TextStyle(
                fontSize: 26,
                color: Colors.deepPurple,
              ),
            ),
            TextButton.icon(onPressed: delete,
              style: TextButton.styleFrom(fixedSize: Size.fromHeight(30)),
                icon: Icon(Icons.delete),
                label: Text('Delete Quote'),
            ),
          ],
        ),
      ),
    );
  }
}