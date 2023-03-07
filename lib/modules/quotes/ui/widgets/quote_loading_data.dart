import 'package:breaking_bad_app/modules/quotes/domain/services/quote_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'clip_react_image_character.dart';

/// Widget que carrega os dados da API para a montagem da página principal do app
class QuoteLoadingData extends StatefulWidget {
  const QuoteLoadingData({super.key});

  @override
  State<QuoteLoadingData> createState() => QuoteLoadingDataState();
}

class QuoteLoadingDataState extends State<QuoteLoadingData> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final quoteService = QuoteService();

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
                  ClipReactImageCharacter(author: snapshot.data?.author),
                  Text(
                    snapshot.data?.author ?? '',
                    style: GoogleFonts.rokkitt(fontSize: 22),
                  ),
                  Text(
                    snapshot.data?.quote ?? '',
                    style: GoogleFonts.rokkitt(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
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
    );
  }
}
