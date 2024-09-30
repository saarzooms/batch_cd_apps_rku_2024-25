import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/quotes_controller.dart';

class QuoteListPage extends StatelessWidget {
  QuoteListPage({super.key});
  QuotesController controller = Get.find<QuotesController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quotes Screen'),
          centerTitle: true,
        ),
        body: Obx(() {
          return ListView.builder(
            itemCount: controller.quotes.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(
                controller.quotes[index].q,
              ),
              subtitle: Text(
                controller.quotes[index].a,
              ),
            ),
          );
        }));
  }
}
