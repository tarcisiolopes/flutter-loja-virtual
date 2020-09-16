import 'package:cloud_firestore/cloud_firestore.dart';

class ProductData {

  String id;
  String category;
  String titulo;
  String descricao;
  double preco;
  List images;
  List tamanhos;

  ProductData.fromDocument(DocumentSnapshot snapshot){
    id = snapshot.documentID;
    titulo = snapshot.data["titulo"];
    descricao = snapshot.data["descricao"];
    preco = snapshot.data["preco"] + 0.0;
    images = snapshot.data["images"];
    tamanhos = snapshot.data["tamanhos"];
  }

  Map<String, dynamic> toResumedMap() {
    return {
      "titulo": titulo,
      "descricao": descricao,
      "preco": preco
    };
  }

}