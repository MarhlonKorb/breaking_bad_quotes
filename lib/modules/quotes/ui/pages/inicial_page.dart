import 'package:breaking_bad_app/modules/quotes/ui/widgets/quote_loading_data.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_main.dart';

class InicialPage extends StatelessWidget {
  const InicialPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  AppBarMain(),
      body: Center(
        child: QuoteLoadingData()
      ),
    );
  }
}



