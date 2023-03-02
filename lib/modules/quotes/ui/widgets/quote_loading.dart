import 'package:breaking_bad_app/modules/quotes/domain/services/quote_service.dart';
import 'package:flutter/material.dart';

import 'clip_react_image_character.dart';

class QuoteLoadingState extends StatefulWidget {
  const QuoteLoadingState({super.key});

  @override
  State<QuoteLoadingState> createState() => QuoteLoadingStateState();
}

class QuoteLoadingStateState extends State<QuoteLoadingState> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final quoteService = QuoteService();

    return Center(
      child: StreamBuilder(
        stream: quoteService.getQuote()!.asStream(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text('Erro ao carregar dados da API');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          if (snapshot.hasData) {
            return SizedBox.expand(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     ClipReactImageCharacter(author: snapshot.data?.author),
                    Text(snapshot.data?.author ?? ''),
                    Text(snapshot.data?.quote ?? ''),
                    FloatingActionButton(
                      onPressed: () => setState(() {}),
                      child: const Icon(Icons.chat),
                    )
                  ],
                ),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
