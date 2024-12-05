import 'package:calculadora_dart/calculadora_dart.dart' as calculadora_dart;
import 'dart:io';

// DIO Challenge (PR)

class Pessoa {
  String nome;
  int idade;
  double peso;
  double altura;

  Pessoa({required this.nome, required this.idade, required this.peso, required this.altura});

  double calcularIMC() {
    return this.peso / (this.altura*2); 
  }


  void imprimirIMC() {
    double imc = calcularIMC();

    print("Olá, " + this.nome);

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

  print("Qual seria seu nome?");
  String nome = stdin.readLineSync() ?? 'Não informado';

  print("Qual seria sua idade?");
  String? idadeInput = stdin.readLineSync();
  int idade = int.tryParse(idadeInput ?? '') ?? 0;

  print("Qual seria seu peso?");
  String? pesoInput = stdin.readLineSync();
  double peso = double.tryParse(pesoInput ?? '') ?? 0.0;

  print("Qual seria sua altura?");
  String? alturaInput = stdin.readLineSync();
  double altura = double.tryParse(alturaInput ?? '') ?? 0.0;

  Pessoa pessoa = new Pessoa(
    nome: nome, 
    idade: idade, 
    peso: peso, 
    altura: altura
  );

  pessoa.imprimirIMC();

}
