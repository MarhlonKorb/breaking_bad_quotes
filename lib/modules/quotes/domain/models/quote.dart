import 'dart:convert';
class Quote {
  final String? author;
  final String? quote;
  bool isFavorite;

  Quote({ this.author, this.quote, this.isFavorite = false});

  factory Quote.fromJson(String str) => Quote.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Quote.fromMap(Map<String, dynamic> json) => Quote(
        author: json["author"],
        quote: json["quote"],
        // isFavorite: json["isFavorite"],
      );

  Map<String, dynamic> toMap() => {
        "author": author,
        "quote": quote,
        "isFavorite": isFavorite,
      };
}
