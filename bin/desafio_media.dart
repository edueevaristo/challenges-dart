import 'dart:io';

class Pessoa {
  String nome;
  int idade;
  String naturalidade;

  Pessoa(this.nome, this.idade, this.naturalidade);
}

class Aluno extends Pessoa {
  String nomeEscola;
  int notaPrimeiroBi;
  int notaSegundoBi;
  int notaTerceiroBi;
  int notaQuartoBi;

  /*Constructor*/
  Aluno(String nome, int idade, String naturalidade, this.nomeEscola, this.notaPrimeiroBi, this.notaSegundoBi, this.notaTerceiroBi, this.notaQuartoBi): super(nome, idade, naturalidade);
}

void main() {
  print("Olá, qual seu nome?");
  String? nomeAluno = stdin.readLineSync();

  print("Prazer $nomeAluno, e qual seria sua idade?");
  String? idadeAluno = stdin.readLineSync();

  print("Certo, você é de onde $nomeAluno?");
  String? naturalidadeAluno = stdin.readLineSync();

  print("Em qual escola você estuda?");
  String? nomeEscolaAluno = stdin.readLineSync();

  print(
      "Show! Bem legal. Vamos calcular sua média e ver se você passou para o próximo ano?");
  String? validaNota = stdin.readLineSync();

  switch (validaNota) {
    case 'Sim':
    case 'SIM':
    case 'SIm':
    case 's':
    case 'ss':
    case 'S':
      print("Que ótimo! Vamos lá então! Qual sua nota do 1ºBimestre?");
      String? notaPrimeiroBi = stdin.readLineSync();

      print("Certo. E qual sua nota do 2ºBimestre?");
      String? notaSegundoBi = stdin.readLineSync();

      print("Ok. E a do 3ºBimestre?");
      String? notaTerceiroBi = stdin.readLineSync();

      print("Pra finalizar, qual foi a do 4ºBimestre?");
      String? notaQuartoBi = stdin.readLineSync();

      if (notaPrimeiroBi != null && notaSegundoBi != null && notaTerceiroBi != null && notaQuartoBi != null && nomeAluno != null && idadeAluno != null && naturalidadeAluno != null && nomeEscolaAluno != null) {
        int notaPrimeiroBiFormatada = int.parse(notaPrimeiroBi);
        int notaSegundoBiFormatada = int.parse(notaSegundoBi);
        int notaTerceiroBiFormatada = int.parse(notaTerceiroBi);
        int notaQuartoBiFormatada = int.parse(notaQuartoBi);
        int idade = int.parse(idadeAluno);
        String nome = nomeAluno;
        String natural = naturalidadeAluno;
        String nomeEscola = nomeEscolaAluno;

        Aluno aluno1 = Aluno(nome, idade, natural, nomeEscola, notaPrimeiroBiFormatada, notaSegundoBiFormatada, notaTerceiroBiFormatada, notaQuartoBiFormatada);

        calculaMedia(aluno1.nome, aluno1.notaPrimeiroBi, aluno1.notaSegundoBi, aluno1.notaTerceiroBi, aluno1.notaQuartoBi);
      }

      break;
  }
}

void calculaMedia(nome, notaPrimeiro, notaSegundo, notaTerceiro, notaQuarto) {
  double media = (notaPrimeiro + notaSegundo + notaTerceiro + notaQuarto) / 4;

  if (media >= 6) {
    print("Parabéns, $nome, sua média final foi de $media, você passou de ano!");
  } else {
    print("Infelizmente $nome, não foi dessa vez, você reprovou.. Sua média final foi de $media.");
  }
}
