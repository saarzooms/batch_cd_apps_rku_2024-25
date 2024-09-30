// To parse this JSON data, do
//
//     final quotes = quotesFromJson(jsonString);

import 'dart:convert';

List<Quotes> quotesFromJson(String str) =>
    List<Quotes>.from(json.decode(str).map((x) => Quotes.fromJson(x)));

String quotesToJson(List<Quotes> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Quotes {
  String q;
  String a;
  String h;

  Quotes({
    required this.q,
    required this.a,
    required this.h,
  });

  factory Quotes.fromJson(Map<String, dynamic> json) => Quotes(
        q: json["q"],
        a: json["a"],
        h: json["h"],
      );

  Map<String, dynamic> toJson() => {
        "q": q,
        "a": a,
        "h": h,
      };
}
