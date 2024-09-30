import 'package:get/get.dart';
import 'package:quotes_app/quotes/services/api_call.dart';

import '../models/quote_model.dart';

class QuotesController extends GetxController {
  Rx<Quotes>? q;
  fetchQuote() {
    ApiCall().fetchQuotes();
  }
}
