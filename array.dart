import 'dart:io';

main() {
  var nome = [];
  bool condicao = true;

  while (condicao) {
    print("Digite o nome");
    var text = stdin.readLineSync();
    if (text == "sair") {
      print("PROGRAMA FINALIZADO");
      condicao = false;
    } else {
      nome.add(text); //coloca os nomes digitas em um array: [lucas, mary, rafael]
    }
    print(nome);
    print("\n");
  }
}
