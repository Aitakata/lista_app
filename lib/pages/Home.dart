import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

/* **********************************************************
 **  lista que simula um Json recebido como response de um GET
 ** ********************************************************** */
  List items = [];
  void carregarLista () { // construindo o conteudo da lista
    items = [];           // limpeza da lista de itens
    for(int i=0; i <= 10; i++) {
      Map<String, dynamic> item = Map();
      item["titulo"] = "Titulo Java ${i}";
      item["descricao"] = "Descricao Java para web ${i}";
      items.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    carregarLista();      // carrega uma lista para teste
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: ListView.builder(
          itemCount: items.length,   // nro de itens na tela
          itemBuilder: (contexto, indice){
           // print("Retorno " + indice.toString());
            return ListTile(
              title: Text(items[indice]["titulo"]),
              subtitle: Text(items[indice]["descricao"]),
            );
          }
      ),
    );
  }
}
