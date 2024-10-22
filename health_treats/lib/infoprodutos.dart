import 'package:flutter/material.dart';
import 'package:health_treats/produtos.dart';

class InfoProdutos extends StatelessWidget {
   const InfoProdutos({super.key}); 

  @override
  Widget build(BuildContext context) {
    var produtos = ModalRoute.of(context)!.settings.arguments as Produtos;
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Básico'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              produtos.desc,
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Image.asset(produtos.foto),
            Text(
              produtos.valor,
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              produtos.nome,
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ],
        )
      ),
    );
  }
}