import 'dart:io';

void main(List<String> args) {
  print("informe sua altura e seu peso: ");

  //colocar as variaveis como var, modelo sem tipagem
  var input1;
  input1 = stdin.readLineSync();
  //e usa a função parse() para definir qual o tipo da variavel
  var altura = double.parse(input1);

  var input2;
  input2 = stdin.readLineSync();
  var peso = double.parse(input2);

  var imc = peso / (altura * 2);

  print("seu IMC é: $imc");
}
