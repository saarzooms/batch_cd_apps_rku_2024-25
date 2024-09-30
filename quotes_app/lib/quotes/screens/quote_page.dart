import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/quotes_controller.dart';

class QuotePage extends StatelessWidget {
  QuotePage({super.key});
  QuotesController controller = Get.put(QuotesController());
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
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.fetchQuote();
          },
          child: Icon(Icons.refresh)),
    );
  }
}
