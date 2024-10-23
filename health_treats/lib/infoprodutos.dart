import 'package:flutter/material.dart';
import 'package:health_treats/pesquisa.dart';
import 'package:health_treats/produtos.dart';

class InfoProdutos extends StatelessWidget {
  const InfoProdutos({super.key}); 

  @override
  Widget build(BuildContext context) {
    var produtos = ModalRoute.of(context)!.settings.arguments as Produtos;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pop(context); // Volta para a página anterior, "apaga a sessão"
              },
              child: const Align(
                alignment: Alignment.centerLeft, // Alinha o texto à esquerda
                child: Padding(
                  padding: EdgeInsets.all(12.0), // Adicionando margem ao ícone
                  child: MouseRegion( // Deixa a área com o cursor de clique
                    cursor: SystemMouseCursors.click, // Define o cursor de clique
                    child: Icon(
                      Icons.arrow_back, // Icon utilizado
                      size: 30.0, // Tamanho
                      color: Color(0xFF353535),
                    ),
                  ),
                ),
              ),
            ),

            // Barra de pesquisa
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PesquisaApp()),
                );
              },
              child: const Align(
                alignment: Alignment.centerRight, // Alinha o texto à direita
                child: Padding(
                  padding: EdgeInsets.all(12.0), // Adicionando margem ao ícone
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click, // Define o cursor de clique
                    child: Icon(
                      Icons.search,
                      size: 30.0,
                      color: Color(0xFF353535),
                    ),
                  ),
                ),
              ),
            ),

            // Imagem do produto
            Center(
           child: Card(
              color: const Color(0xFFF8F8F8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: const EdgeInsets.only(top: 50.0),
              child: SizedBox(
                width: 205.0,
                height: 230.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                    child: Image.asset(
                      produtos.foto,
                      width: 250.0,
                      height: 250.0,
                    ),
                    ),
                  ]
                ),
              ),
            ),
            ),

            // Informações do produto
            Padding(
              padding: const EdgeInsets.only(top: 300.0, left: 18.0), // Ajuste a margem superior conforme necessário
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Ingredientes',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF353535),
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    'Aqui estão os ingredientes do produto.',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF353535),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
