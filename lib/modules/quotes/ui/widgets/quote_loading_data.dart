import 'package:breaking_bad_app/modules/quotes/domain/services/quote_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/models/quote.dart';
import '../../domain/models/quote_provider.dart';
import 'clip_react_image_character.dart';

/// Widget que carrega os dados da API para a montagem da página principal do app
class QuoteLoadingData extends StatefulWidget {
  const QuoteLoadingData({super.key});

  @override
  State<QuoteLoadingData> createState() => QuoteLoadingDataState();
}

class QuoteLoadingDataState extends State<QuoteLoadingData> {
  final quoteService = QuoteService();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final quoteProvider = Provider.of<QuoteProvider>(context, listen: false);

    return StreamBuilder(
      stream: quoteService.getQuote()!.asStream(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('Erro ao carregar dados da API');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        if (snapshot.hasData) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipReactImageCharacter(author: snapshot.data!.author!),
                  Text(
                    snapshot.data!.author!,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    snapshot.data!.quote!,
                    style: Theme.of(context).textTheme.titleSmall,
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                        onPressed: () => setState(() {}),
                        child: const Icon(Icons.chat),
                      ),
                      InkWell(
                        onTap: () {
                          quoteProvider.setFavorite(snapshot.data!);
                        },
                        child: Consumer<QuoteProvider>(
                          builder: (context, value, _) => Column(
                            children: [
                              Icon(
                                snapshot.data!.isFavorite
                                    ? Icons.star
                                    : Icons.star_border,
                                color: const Color.fromRGBO(58, 100, 24, 0.935),
                              ),
                              Text(
                                snapshot.data!.isFavorite
                                    ? 'Desfavoritar'
                                    : 'Favoritar',
                                style: const TextStyle(
                                  color: Color.fromRGBO(58, 100, 24, 0.935),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
