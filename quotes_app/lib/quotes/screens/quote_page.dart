import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotes_app/quotes/screens/quote_list_page.dart';

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
        actions: [
          IconButton(
              onPressed: () {
                Get.to(QuoteListPage());
              },
              icon: Icon(Icons.menu))
        ],
      ),
      body: Obx(() {
        return controller.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    controller.quote.value.q,
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    controller.quote.value.a,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              );
      }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.fetchQuote();
          },
          child: Icon(Icons.refresh)),
    );
  }
}
