import 'package:flutter/material.dart';
import '../../mock_data/character_mock_data.dart';

class InicialScreen extends StatelessWidget {
  InicialScreen({
    super.key,
  });

  final charactersList = CharactersListMock().charactersList;

  @override
  Widget build(BuildContext context) {
    return Scaffold( extendBody: true,
      appBar: AppBar(
        title: const Text('Citações Breaking Bad'),
        centerTitle: true,
      ),
      body: const Center(),
    );
  }
}

