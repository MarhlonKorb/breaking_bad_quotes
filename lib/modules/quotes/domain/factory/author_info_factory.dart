import '../const/name_author_const.dart';

class AuthorInfoFactory {
  String getInfoAuthor(String authorName) {
    switch (authorName) {
      case NameAuthorConst.hankSchrader:
        return "Henry R. Schrader é o cunhado do personagem principal Walter White , e é um agente da Drug Enforcement Administration (DEA) em Albuquerque, Novo México . Ao longo da série, ele lidera a investigação do cozinheiro de metanfetamina Heisenberg - sem saber que o esquivo chefão das drogas é seu próprio cunhado.";
      case NameAuthorConst.walterWhite:
        return "É um professor de química diagnosticado com câncer no pulmão em estágio avançado.Ele passa a produzir metanfetamina para garantir o futuro financeiro da família. Com o progresso do seu negócio, Walter ganha uma reputação notória utilizando o nome Heisenberg.";
      case NameAuthorConst.walterWhiteJr:
        return "Filho de Walter e Skyler, portador de paralisia cerebral. Ele fica revoltado após o anúncio do câncer de Walter.";
      case NameAuthorConst.jessePinkman:
        return "Antigo aluno de Walter, Jesse Pinkman é um traficante que se associa a Walt. Juntos, eles fabricam metanfetamina de alta qualidade.";
      case NameAuthorConst.mikeEhrmantraut:
        return "Mike é um ex- policial da Filadélfia que, nominalmente, trabalha para o Los Pollos Hermanos como chefe de segurança corporativa; Na realidade, ele é um assassino e executador na operação de metanfetamina cristalina de Gus Fring.";
      case NameAuthorConst.saulGoodman:
        return "Advogado de porta de cadeia. Torna-se parceiro indispensável de Walter White e Jesse Pinkman.";
      case NameAuthorConst.gustavoFring:
        return "É um grande distribuidor de drogas. Tem como disfarce uma rede de fast-food chamada Los Pollos Hermanos.";
      case NameAuthorConst.gusFring:
        return "É um grande distribuidor de drogas. Tem como disfarce uma rede de fast-food chamada Los Pollos Hermanos.";
      case NameAuthorConst.skylerWhite:
        return "É esposa de Walter, grávida do segundo filho do casal. Ele desconfia cada vez mais do comportamento do marido.";
      case NameAuthorConst.thefly:
        return "";
      case NameAuthorConst.badger:
        return "Amigo zueiro do Jesse, que começa a traficar drogas e ajuda Jesse a sair de situações difíceis.";

      default:
        "Imagem não encontrada";
        return "Imagem não encontrada";
    }
  }
}
