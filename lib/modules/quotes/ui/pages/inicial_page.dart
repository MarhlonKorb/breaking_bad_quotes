import 'package:breaking_bad_app/modules/quotes/ui/widgets/quote_loading.dart';
import 'package:flutter/material.dart';

class InicialPage extends StatelessWidget {
  const InicialPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold( extendBody: true,
      appBar: AppBar(
        title: const Text('Citações Breaking Bad'),
        centerTitle: true,
      ),
      body: const Center(
        child: QuoteLoadingState()
      ),
    );
  }
}

