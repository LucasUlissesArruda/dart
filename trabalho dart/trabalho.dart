void main() {
  int jovens = 2;
  int adultos = 0;
  int mes = 0;

  for (mes = 1; mes <= 12; mes++) {
    int novosAdultos = jovens;
    adultos += novosAdultos;

    int novosJovens = adultos;

    jovens = novosJovens;

    int total = jovens + adultos;
    print('Fim do Mês $mes: População de coelhos: $total, Jovens: $jovens, Adultos: $adultos');
  }

  print('\nIntrodução do predador: redução de 75% da população a cada mês.\n');

  for (mes = 13; mes <= 25; mes++) {
    int novosAdultos = jovens;
    adultos += novosAdultos;

    int novosJovens = adultos;

    jovens = novosJovens;

    int total = jovens + adultos;
    int totalAposPredacao = (total * 0.25).floor();

    double proporcaoJovens = jovens / total;
    double proporcaoAdultos = adultos / total;

    jovens = (totalAposPredacao * proporcaoJovens).floor();
    adultos = (totalAposPredacao * proporcaoAdultos).floor();

    total = jovens + adultos;
    print('Fim do Mês $mes: População de coelhos: $total, Jovens: $jovens, Adultos: $adultos');
  }

}
