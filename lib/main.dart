import 'package:flutter/material.dart';
import 'package:lojinha_alura/paginas/carrinho.dart';
import 'package:lojinha_alura/paginas/detalhes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/carrinho': (context) => Carrinho(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {

  final List moveis = [
    {
      "titulo": "Mesa",
      "preco": 300,
      "foto": "movel1.jpeg",
      "descricao":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Cadeira",
      "preco": 120,
      "foto": "movel2.jpg",
      "descricao":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Manta",
      "preco": 200,
      "foto": "movel3.jpg",
      "descricao":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Sofá Cinza",
      "preco": 800,
      "foto": "movel4.jpg",
      "descricao":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Mesa de cabeceira",
      "preco": 400,
      "foto": "movel5.jpg",
      "descricao":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Jogo de Cama",
      "preco": 250,
      "foto": "movel6.jpg",
      "descricao":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    },
    {
      "titulo": "Sofá Branco",
      "preco": 900,
      "foto": "movel7.jpg",
      "descricao":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquam libero id mauris mollis convallis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        centerTitle: true,
      ),
      body: ElevatedButton(
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(
            builder: (context) => Detalhes(),
          ));
        },
        child: Text('Vamos para os detalhes'),
      ),
    );
  }
}

