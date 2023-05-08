import 'package:breaking_bad_app/modules/quotes/domain/models/quote.dart';
import 'package:flutter/material.dart';

class QuoteProvider with ChangeNotifier {
  final List<Quote> _quotes = [];

  List<Quote> get items => [..._quotes];

  List<Quote> get favoriteQuotes =>
      _quotes.where((quote) => quote.isFavorite).toList();

  /// Adiciona uma citação a lista de favoritas
  void _addQuote(Quote quote) {
    if (!_quotes.contains(quote)) {
      _quotes.add(quote);
    } else {
      _quotes.remove(quote);
    }
    notifyListeners();
  }

  void setFavorite(Quote quote) {
    quote.isFavorite = !quote.isFavorite;
    _addQuote(quote);
    notifyListeners();
  }

  void removeQuoteFromList(Quote quote){
    if(_quotes.contains(quote)){
      _quotes.remove(quote);
    }
      notifyListeners();
  }
}
