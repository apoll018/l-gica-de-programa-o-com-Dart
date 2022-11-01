import 'dart:io';

main() {
  print("qual sua idade?");
//"leia uma linha sincronamente", leitura de dados
  var input;
//essa função retorna um texto, mesmo colocado um numero, precisa fazer conversão
  input = stdin.readLineSync();
//função que converte para int converte para int
  int idade = int.parse(input); 

  if (idade >= 18) {
    print("voce e maior de idade");
  } else {
    print("menor de idade");
  }
}
