import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'modules/quotes/ui/pages/inicial_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DotEnv().load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home:   InicialScreen(),
    );
  }
}

