import 'package:flutter/material.dart';

class BotaoCarrinho extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/carrinho');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            bottomLeft: Radius.circular(100),
          ),
        ),
        alignment: Alignment.centerRight,
        height: 40.0,
        padding: EdgeInsets.only(right: 20.0, left: 30.0),
        child: Image(
          height: 30.0,
          image: AssetImage('utilidades/assets/icones/carrinho.png'),
        ),
      ),
    );
  }
}