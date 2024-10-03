import 'package:flutter/material.dart';

class Massas extends StatefulWidget {
  const Massas({super.key});
  
  @override
  _MassasState createState() => _MassasState();
}

// Classe que contém todo o conteúdo a ser exibido na tela
class _MassasState extends State<Massas> {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Massas | Page', // Título que vai no app (quando emulado no navegador)
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column( // Cria uma coluna que receberá novos elementos
            crossAxisAlignment: CrossAxisAlignment.stretch, // Ocupa toda a largura da tela
            children: <Widget>[
              Stack( // Foi utilizado para possibilitar a sobreposição do texto sobre a imagem
                children: <Widget>[
                  Image.asset( // Comando que chama a imagem
                    'assets/img/massasPage.png', // Caminho da Imagem de fundo que ocupará determinado espaço
                    fit: BoxFit.cover, // Expande a imagem por todo espaço definido
                    width: double.infinity, // Utilizado para usar 100% do tamanho determinado
                    height: 400.0, // Define a altura da imagem
                  ),
                  GestureDetector( // Flecha
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
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector( // Barra de pesquisa
                    onTap: () {
                      Navigator.pop(context); // Volta para a página anterior, "apaga a sessão"
                    },
                    child: const Align(
                      alignment: Alignment.centerRight, // Alinha o texto à direita
                      child: Padding(
                        padding: EdgeInsets.only(right: 22.0, top: 12.0), // Adicionando margem ao ícone apenas para cima e esquerda
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click, // Define o cursor de clique
                            child: Icon(
                              Icons.search,
                              size: 30.0,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned( // Comando utilizado para definir a posição de algum elemento (Nesse caso o elemento é um Text)
                    top: 50.0, // Define a distância do Text para a margem superior
                    left: 30.0, // Define a distância do Text para a margem esquerda
                    child: Column( // Criando uma coluna para alocar o Text
                      crossAxisAlignment: CrossAxisAlignment.start, // Alinha o texto no início, esquerda
                      children: <Widget>[
                        Text( // Criando o texto que irá se sobrepor a imagem
                          'Massas', // \n é quebra de linha
                          style: TextStyle( // Comando utilizado para estilizar o texto
                            fontSize: 50.0, // Definindo o tamanho da fonte
                            fontWeight: FontWeight.bold, // Definindo o estilo da fonte (itálico, negrito, etc)
                            color: Colors.white, // Definindo a cor do texto
                            height: 1.4, // Definindo a altura, que servirá como espaçamento de uma linha a outra
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 15.0), // Comando utilizado para dar quebras de pixels na tela 
            ]
          ),
        ),
      ),
    );
  }
}