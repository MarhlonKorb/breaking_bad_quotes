import 'package:breaking_bad_app/modules/quotes/domain/models/quote.dart';

class CharactersListMock {
  final charactersList = [
    const Quote(
      author: 'Walter White',
      quote: 'I am not in danger, Skyler. I AM the danger!',
    ),
    const Quote(
      author: 'Mike Ehrmantraut',
      quote: 'Shut the f*ck up and let me die in peace.',
    ),
  ];
}
