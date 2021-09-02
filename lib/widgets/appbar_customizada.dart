import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/botao_carrinho.dart';

class AppBarCustomizada extends StatelessWidget with PreferredSizeWidget {
  // a declaração de constantes exige a inicialização
  // nesse caso, usaremos um construtor para inicializar

  final String titulo;
  final bool ehPaginaCarrinho;

  // o parâmetro nomeado permite a gente 'dar nome aos bois'
  // ou seja, obrigatoriamente ao chamar a classe,
  // devemos nomear o parâmetro, a exemplo:
  // AppBar(titulo: 'Lojinha Alura')
  // Sem o parâmetro nomeado fica:
  // AppBar('Lojinha alura)
  // Sem o nome do parâmetro

  AppBarCustomizada({this.titulo, this.ehPaginaCarrinho});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      title: Text(
        titulo,
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      actions: [
        _mudarPaginaCarrinho(ehPaginaCarrinho),
      ],
    );
  }

  _mudarPaginaCarrinho(bool ehPaginaCarrinho){
    if(ehPaginaCarrinho) return Container();
      return BotaoCarrinho();
  }

  @override
  // ktoolBarHeight determina o tamanho padrão da appBar que é 56pixeis
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
