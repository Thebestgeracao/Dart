import 'dart:io';

void main() {

  print("Olá, por gentileza, digite sua idade:");
  int idade = int.parse(stdin.readLineSync()!);

  if(idade >= 18){
    print("Você tem a idade correta para dirigir um veículo.");
  }else{
    print("Você não tem a idade adequada para dirigir um veículo.");
  }
}
