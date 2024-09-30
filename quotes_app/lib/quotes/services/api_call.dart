import 'package:http/http.dart' as http;

class ApiCall {
  fetchQuotes() async {
    var request =
        http.Request('GET', Uri.parse('https://zenquotes.io/api/random'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }
}
