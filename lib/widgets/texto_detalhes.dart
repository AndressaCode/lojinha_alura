import 'package:flutter/material.dart';

class TextoDetalhes extends StatelessWidget {

  final String texto;

  TextoDetalhes({this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
      child: Text(texto),
    );
  }
}
