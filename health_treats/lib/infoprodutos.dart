import 'package:flutter/material.dart';
import 'package:health_treats/produtos.dart';

class InfoProduto extends StatefulWidget {
  const InfoProduto({super.key});

  @override
  _InfoProdutoState createState() => _InfoProdutoState();
}

class _InfoProdutoState extends State<InfoProduto> {
  @override
  Widget build(BuildContext context) {
    // Pegando o produto passado pela rota
    final produto = ModalRoute.of(context)?.settings.arguments as Produtos;

    return Scaffold(
      appBar: AppBar(
        title: Text(produto.nome),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(produto.foto,
          width: 100.0,
          height: 100.0), // Exibe a imagem do produto
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              produto.desc,
              style: const TextStyle(fontSize: 16.0),
            ),
          ),
          const SizedBox(height: 10.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Comentários:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: produto.comentarios.length,
              itemBuilder: (context, index) {
                final comentario = produto.comentarios[index];
                return ListTile(
                  title: Text(comentario.nome),
                  subtitle: Text(comentario.desc),
                  trailing: Text('${comentario.rating}/5'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
