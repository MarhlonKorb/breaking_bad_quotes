import 'package:breaking_bad_app/modules/quotes/domain/models/quote_provider.dart';
import 'package:breaking_bad_app/modules/quotes/ui/widgets/appbar_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

import '../widgets/app_drawer.dart';

class QuoteFavoritesPage extends StatelessWidget {
  const QuoteFavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final quoteProvider =
        Provider.of<QuoteProvider>(context);

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: const AppBarMain(title: 'Frases favoritas'),
      body: quoteProvider.favoriteQuotes.isNotEmpty
          ? ListView.builder(
              itemCount: quoteProvider.favoriteQuotes.length,
              itemBuilder: (context, index) {
                return Slidable(
                  endActionPane: ActionPane(
                    motion: const DrawerMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (BuildContext context) {
                          quoteProvider.removeQuoteFromList(quoteProvider.favoriteQuotes.elementAt(index));
                        },
                        icon: Icons.dangerous,
                        label: 'Excluir',
                      ),
                      
                    ],
                  ),
                  child: Card(
                    child: Row(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    quoteProvider.favoriteQuotes.elementAt(index).author!),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    quoteProvider.favoriteQuotes.elementAt(index).quote!),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );

              },)
          : const Center(
              child: Text('Nenhum item adicionado aos favoritos.'),
            ),
    );
  }
}
