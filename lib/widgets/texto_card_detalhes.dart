import 'package:flutter/material.dart';

class TextoCardDetalhes extends StatelessWidget {

  final String texto;
  final TextStyle estilo;

  TextoCardDetalhes({this.texto, this.estilo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
      child: _estilizarTexto(texto),
    );
  }

  _estilizarTexto(texto){
    if(estilo != null) {
      return Text(texto, style: estilo);
    }
    return Text(texto);
  }
}
