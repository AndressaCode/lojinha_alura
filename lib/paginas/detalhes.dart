import 'package:flutter/material.dart';
import 'package:lojinha_alura/paginas/carrinho.dart';

class Detalhes extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes'),
        centerTitle: true,
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(
              context,
              '/carrinho',
          );
        },
        child: Text('Vamos para o carrinho'),
      ),
    );
  }
}