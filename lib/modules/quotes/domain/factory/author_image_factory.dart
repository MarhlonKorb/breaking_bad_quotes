import 'package:breaking_bad_app/modules/quotes/domain/const/name_author_const.dart';

class AuthorImageFactory extends NameAuthorConst {
  String getPicturePathAuthor(String authorName) {
    switch (authorName) {
      case NameAuthorConst.hankSchrader:
        return "lib/modules/shared/assets/images/hank.jpg";
      case NameAuthorConst.walterWhite:
        return "lib/modules/shared/assets/images/heisenberg.jpg";
      case NameAuthorConst.walterWhiteJr:
        return "lib/modules/shared/assets/images/jr.png";
      case NameAuthorConst.jessePinkman:
        return "lib/modules/shared/assets/images/jesse.png";
      case NameAuthorConst.mikeEhrmantraut:
        return "lib/modules/shared/assets/images/mike.png";
      case NameAuthorConst.saulGoodman:
        return "lib/modules/shared/assets/images/saul.png";
      case NameAuthorConst.gustavoFring:
        return "lib/modules/shared/assets/images/gus.png";
      case NameAuthorConst.gusFring:
        return "lib/modules/shared/assets/images/gus.png";
      case NameAuthorConst.skylerWhite:
        return "lib/modules/shared/assets/images/skyler.jpeg";
      case NameAuthorConst.thefly:
        return "lib/modules/shared/assets/images/saul.png";

      default:
        "Imagem não encontrada";
        return "Imagem não encontrada";
    }
  }
}
