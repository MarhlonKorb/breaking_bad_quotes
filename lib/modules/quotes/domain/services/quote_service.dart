import 'package:breaking_bad_app/modules/quotes/infra/repositories/quotes_repository_api.dart';

import '../models/quote.dart';

class QuoteService {
  final _quoteRepository = QuotesRepositoryApi();

  Future<Quote>? getQuote() {
    return _quoteRepository.getQuote();
  }
}
