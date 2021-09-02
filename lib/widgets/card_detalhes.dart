import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lojinha_alura/modelos/movel.dart';
import 'package:lojinha_alura/paleta_cores.dart';
import 'package:lojinha_alura/widgets/texto_detalhes.dart';

class CardDetalhes extends StatelessWidget{

  final Movel movel;
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  CardDetalhes({this.movel});

  @override
  Widget build(BuildContext context){
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextoDetalhes(texto: movel.titulo),
          TextoDetalhes(texto: movel.descricao),
          Container(
            margin: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(formatacaoReais.format(movel.preco)),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(PaletaCores().lilas),
                  ),
                  onPressed: () {},
                  child: Text('Comprar', style: TextStyle(
                    color: Colors.white,
                  ),),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}