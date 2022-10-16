import 'dart:io';

void main() {
  print("Qual o seu nome?");
  String? nome = stdin.readLineSync();

  print("Prazer $nome, vamos calcular o seu IMC?");
  String? validaImc = stdin.readLineSync();

  switch (validaImc) {
    case 'Sim':
    case 'SIM':
    case 'SIm':
    case 's':
    case 'ss':
    case 'S':
    
      print("Vamos lá $nome! Qual o seu peso?");
      String? peso = stdin.readLineSync();

      print("Certo, e qual a sua altura?");
      String? altura = stdin.readLineSync();

      if (peso != null && altura != null) {
        double peso1 = double.parse(peso);
        double altura1 = double.parse(altura);

        double imcCalculado = peso1 / (altura1 * altura1);
        String imcFormatado = imcCalculado.toStringAsFixed(1);

        if (imcCalculado >= 18.5 || imcCalculado <= 24.9) {
          print("O seu IMC $nome, é: $imcFormatado, o seu diagnostico indica que você está no peso ideal.");
        }

        if (imcCalculado >= 25.0 || imcCalculado == 29.9) {
          print("O seu IMC $nome, é: $imcFormatado, o seu diagnostico indica que você está sobrepeso, procure se cuidar.");
        }

        if (imcCalculado >= 30.0) {
          print("O seu IMC $nome, é: $imcFormatado, o seu diagnostico indica que você está com obesidade, procure um posto de saúde mais próximo.");
        }

        if (imcCalculado >= 40.0) {
          print("O seu IMC $nome, é: $imcFormatado, o seu diagnostico indica que você está com obesidade gravíssima, procure um médico imediatamente!");
        }
      }
  }
}
