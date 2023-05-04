import 'package:breaking_bad_app/modules/quotes/domain/models/quote.dart';
import 'package:flutter/material.dart';

class QuoteList with ChangeNotifier {
  final List<Quote> _quotes = [];

  List<Quote> get items => [..._quotes];

  List<Quote> get favoriteQuotes =>
      _quotes.where((quote) => quote.isFavorite).toList();

      void addQuote(Quote quote){
        if(!_quotes.contains(quote)){
        _quotes.add(quote);
        }
        notifyListeners();
      }
}
