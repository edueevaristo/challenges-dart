import 'dart:io';

void main() {
  print("Olá, qual o seu nome?");
  String? nome = stdin.readLineSync();

  print("Prazer $nome, vamos fazer uma tabuada?");
  String? validaTabuada = stdin.readLineSync();

    switch (validaTabuada) {
      case 'Sim':
      case 'SIM':
      case 'ss':
      case 's':
      case 'S':
        print("Ótimo, então vamos lá!! De qual número você deseja?");
        String? numeroMultiplicador = stdin.readLineSync();

        print("Certo, e até quando você deseja que seja multiplicado?");
        String? numeroDeVezes = stdin.readLineSync();

        if (numeroMultiplicador != null && numeroDeVezes != null) {
          int numeroMultiplicador1 = int.parse(numeroMultiplicador);
          int numeroDeVezes1 = int.parse(numeroDeVezes);

          for (int i = 1; i <= numeroDeVezes1; i++) {
            print("$numeroMultiplicador1 x $i = ${numeroMultiplicador1 * i}");
          }
          
          print("Tabuada do $numeroMultiplicador1 aplicada com sucesso! Te espero na próxima!");
        }

        break;
    }
}
