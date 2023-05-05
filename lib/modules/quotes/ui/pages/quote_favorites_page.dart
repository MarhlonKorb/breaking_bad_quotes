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
    final quoteProviderList =
        Provider.of<QuoteProvider>(context).favoriteQuotes;

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: const AppBarMain(title: 'Frases favoritas'),
      body: quoteProviderList.isNotEmpty
          ? ListView.builder(
              itemCount: quoteProviderList.length,
              itemBuilder: (context, index) {
                return Slidable(
                  endActionPane: ActionPane(
                    motion: const DrawerMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (BuildContext context) {},
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
                                    quoteProviderList.elementAt(index).author!),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    quoteProviderList.elementAt(index).quote!),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );

              })
          : const Center(
              child: Text('Nenhum item adicionado aos favoritos.'),
            ),
    );
  }
}
