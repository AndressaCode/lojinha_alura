import 'package:flutter/material.dart';

class IndicadorBotaoCarrinho extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
