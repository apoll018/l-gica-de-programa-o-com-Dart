import 'dart:convert';
import 'dart:io';

//const Locale('pt', 'BR');

List<String> produtos = [];

main() {

  bool condicao = true;

  while (condicao) {
    print("Informe um prduto\n");
    var input;
    input = stdin.readLineSync();

    if (input == "sair") {
      print("Terminou o programa");
      condicao = false;
    } else if (input == "imprimir") {
      imprimir();
    } else if (input == "remover") {
      /*print("Produto: $i - ${produtos[i]}\n");
        print("Qual item deseja remover? Informe o codigo:");
        int item = int.parse(stdin.readLineSync());
        produtos.removeAt(item);
        print("Item removido");*/

      imprimir();
      remover();
    } else {
      produtos.add(input);
      print("\x1B[2J\x1B[0;0h"); //limpar o terminal conforme vai digitando

    }
  }
}

imprimir() {
  for (var i = 0; i < produtos.length; i++) {
    print("Produto: $i - ${produtos[i]}\n");
  }
}

remover() {
  print("Qual item deseja remover? Informe o codigo:");
  var item;
  item = stdin.readLineSync(encoding: utf8);
  int cod = int.parse(item);
  produtos.removeAt(cod);
  print("item removido");
  print("\n");
}
