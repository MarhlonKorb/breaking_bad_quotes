import 'package:breaking_bad_app/modules/quotes/ui/widgets/quote_loading_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InicialPage extends StatelessWidget {
  const InicialPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold( extendBody: true,
      appBar: AppBar(
        title: Text('Citações Breaking Bad', style: GoogleFonts.rokkitt(fontSize: 25)),
        centerTitle: true,
      ),
      body: const Center(
        child: QuoteLoadingData()
      ),
    );
  }
}

