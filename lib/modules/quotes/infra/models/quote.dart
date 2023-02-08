import 'dart:convert';

class Quote {

  final String? author;
  final String quote;

 const Quote({required this.author,required this.quote});

 factory Quote.fromJson(String str) => Quote.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Quote.fromMap(Map<String, dynamic> json) => Quote(
        author: json["author"],
        quote: json["quote"],
        
    );

    Map<String, dynamic> toMap() => {
        "author": author,
        "quote": quote,
    };
}
