import 'package:http/http.dart' as http;

import '../models/quote_model.dart';

class ApiCall {
  fetchQuotes() async {
    var quote;
    var request =
        http.Request('GET', Uri.parse('https://zenquotes.io/api/random'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var res = await response.stream.bytesToString();
      print(res);
      final quotes = quotesFromJson(res);
      quote = quotes.first;
    } else {
      print(response.reasonPhrase);
    }
    return quote;
  }
}
