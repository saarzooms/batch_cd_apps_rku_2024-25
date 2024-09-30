import 'package:get/get.dart';
import 'package:quotes_app/quotes/services/api_call.dart';

import '../models/quote_model.dart';

class QuotesController extends GetxController {
  var quote = Quotes(q: '', a: '', h: 'h').obs;
  var isLoading = false.obs;
  fetchQuote() async {
    isLoading.value = true;
    var res = await ApiCall().fetchQuotes();
    if (res != null) {
      quote.value = res;
    }
    isLoading.value = false;
  }
}
