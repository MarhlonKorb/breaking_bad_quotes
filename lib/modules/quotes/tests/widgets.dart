// ignore: depend_on_referenced_packages
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:breaking_bad_app/modules/quotes/ui/pages/inicial_page.dart';
import 'package:nock/nock.dart';
import '../../../main.dart';

main() async {
setUpAll(() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  nock.init();
});

  testWidgets('Teste de widgets inicial', (tester) async{
     await tester.pumpWidget(const MyApp());
     await tester.pumpWidget(const MaterialApp());
     await tester.pumpWidget(const InicialPage());

    // expect(find.text('Citações Breaking Bad'), findsOneWidget);
      }, );

}