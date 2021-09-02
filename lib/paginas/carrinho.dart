import 'package:flutter/material.dart';

class Carrinho extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrinho'),
        centerTitle: true,
      ),
      body: Text('Estamos no carrinho'),
    );
  }
}