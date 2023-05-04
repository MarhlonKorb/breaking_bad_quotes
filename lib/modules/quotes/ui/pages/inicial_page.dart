import 'package:breaking_bad_app/modules/quotes/ui/widgets/quote_loading_data.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_main.dart';

class InicialPage extends StatelessWidget {
  const InicialPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarMain(),
      drawer: Drawer(
          child: ListView(
        padding: const EdgeInsets.all(18),
        children:  [
          ListTile(
            leading: const Text('Frases Favoritas'),
            onTap: (){},
          ),
          ListTile(
            leading: const Text('About'),
            onTap: (){},
          ),
        ],
      )),
      body: const Center(child: QuoteLoadingData()),
    );
  }
}
