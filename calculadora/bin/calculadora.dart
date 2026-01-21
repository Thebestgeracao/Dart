import 'dart:io';

void main() {
  double numberOne = 0;
  double numberTwo = 0;
  String operacao = "";
  String? entrada = "";
  List<String> operacoes = <String>["+", "-", "*", "/"];

  void soma() {
    print(numberOne + numberTwo);
  }

  subtracao() {
    print(numberOne - numberTwo);
  }

  multiplicacao() {
    print(numberOne * numberTwo);
  }

  divisao() {
    print(numberOne / numberTwo);
  }

  void calcular() {
    switch (operacao) {
      case "+":
        soma();
      case "-":
        subtracao();
      case "*":
        multiplicacao();
      case "/":
        divisao();
        break;
    }
  }

  void getOperacao() {
    print("Digite uma operação: ${operacoes.toString()}");
    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (operacoes.contains(entrada)) {
        operacao = entrada!;
      } else{
        print("Operação inválida");
        getOperacao();
      }
    }
  }

  print("Digite o primeiro valor:");

  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numberOne = double.parse(entrada!);
    }
  }

  getOperacao();

  print("Digite o segundo valor: ");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numberTwo = double.parse(entrada!);
    }
  }

  print("O resultado da operação:");

  calcular();
}
