import 'dart:io';

void main() {
  print("\nBem-vindo ao mercado: No Precinho!!!\n");
  print("Digite ao valor gasto: ");
  double quantidadeGasta = double.parse(stdin.readLineSync()!);
  int cupons = (quantidadeGasta / 50).floor();
  print("O cliente receberá $cupons cupom(s) para esta compra.");



}
