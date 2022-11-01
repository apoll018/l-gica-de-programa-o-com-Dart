import 'dart:io';

List<Map<String, dynamic>> cadastros = [];
var comando;

main() {
  bool condicao = true;

  while (condicao) {
    print("digite um comando\n");
    print("sair, cadastr0, imprimir\n");
    comando = stdin.readLineSync();
    if (comando == "sair") {
      print("programa finalizado\n");
      condicao = false;
    } else if (comando == "cadastro") {
      cadastrar();
    } else if (comando == "imprimir") {
      print(cadastros);
    } else {
      print("comando inválido\n");
    }
  }
}

cadastrar() {
  Map<String, dynamic> cadastro = {};

  print("digite seu nome\n");
  cadastro["nome"] = stdin.readLineSync();

  print("digite sua idade\n");
  cadastro["idade"] = stdin.readLineSync();

  print("digite sua cidade\n");
  cadastro["cidade"] = stdin.readLineSync();

  print("digite seu estado\n");
  cadastro["estado"] = stdin.readLineSync();
  cadastros.add(cadastro);
}
