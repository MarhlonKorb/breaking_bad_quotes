import 'package:http/http.dart' as http;
import 'package:breaking_bad_app/modules/quotes/domain/models/quote.dart';

import 'package:breaking_bad_app/modules/quotes/domain/repositories/i_quotes_repository.dart';

import '../../../config/environment.dart';

class QuotesRepositoryApi extends IQuotesRepository {
  @override
  Future<Quote>? getQuote() async {
    final uri = Uri.parse('${Environment.apiUrl}/v1/quotes/');
    final http.Response response;
    try {
      response = await http.get(uri);
      final quoteFormatada =
          response.body.replaceAll('[', '').replaceAll(']', '');
      if (response.statusCode == 200) {
        return Quote.fromJson(quoteFormatada);
      }
    } catch (e) {
      throw ('Não foi possível realizar a busca dos dados. Causa: ${e.toString()}');
    }
    return Quote.fromJson('');
  }
}
