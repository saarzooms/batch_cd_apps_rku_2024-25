import 'package:flutter/material.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quotes Screen'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Quote',
              style: TextStyle(fontSize: 40),
            ),
            Text(
              'Author',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ));
  }
}
