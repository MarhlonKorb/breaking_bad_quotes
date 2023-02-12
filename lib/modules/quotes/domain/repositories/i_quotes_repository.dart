import '../models/quote.dart';

abstract class IQuotesRepository {
  
   Future<Quote>? getQuote();  
}