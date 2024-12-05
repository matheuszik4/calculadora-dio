import 'package:calculadora_dart/calculadora_dart.dart' as calculadora_dart;

class Pessoa {
  int idade;
  double peso;
  double altura;

  Pessoa({required this.idade, required this.peso, required this.altura});

  double calcularIMC() {
    return this.peso / (this.altura*2); 
  }


  void imprimirIMC() {
    double imc = calcularIMC();

    if (imc <= 16) {
      print('Magreza Grave');
    } else if (imc >= 16 && imc <= 17) {
      print('Magreza Moderada');
    } else if (imc >= 17 && imc <= 18.5) {
      print('Magreza Leve');
    }  else if (imc >= 18.5 && imc <= 25) {
      print('Saudável');
    }  else if (imc >= 25 && imc <= 30) {
      print('Sobrepeso');
    }  else if (imc >= 30 && imc <= 35) {
      print('Obesidade Grau |');
    } else if (imc >= 35 && imc <= 40) {
      print('Obesidade Grau || (severa)');
    } else if (imc >= 40) {
      print('Obesidade Grau ||| (mórbida)');
    }
  }
}

void main(List<String> arguments) {
  Pessoa matheus = new Pessoa(idade: 25, altura: 1.80, peso: 100);
  matheus.imprimirIMC();
}
