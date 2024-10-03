import 'package:flutter/material.dart';
import 'package:health_treats/comentarios.dart';
import 'package:health_treats/menu.dart';
import 'package:health_treats/sobre.dart';

class Salgados extends StatefulWidget {
  const Salgados({super.key});
  
  @override
  _SalgadosState createState() => _SalgadosState();
}

// Classe que contém todo o conteúdo a ser exibido na tela
class _SalgadosState extends State<Salgados> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) { //Função realizada ao clicar em qualquer item da bottomNavigationBar
    setState(() {
      _selectedIndex = index;
    });

    Widget destination; //Criando a variável
    switch (index) {
      case 0:
        destination = const ComentariosApp(); //Caso 0 acontece se clicar no 1º botão da bottomNavigationBar
      break;
      case 1:
        destination = const MenuApp(); //Caso 1 acontece se clicar no 2º botão da bottomNavigationBar
      break;
      case 2:
        destination = const SobreApp(); //Caso 2 acontece se clicar no 3º botão da bottomNavigationBar
      break;
      default:
        destination = MenuApp(); //Se não acontecer nenhuma das opções acima
    }

    Navigator.push( //Pegando o conteúdo da variável "destination" para redirecionar pro caso ocorrido (que indica para qual tela irá) 
      context,
      MaterialPageRoute(builder: (context) => destination),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health Treats | Salgados', // Título que vai no app (quando emulado no navegador)
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column( // Cria uma coluna que receberá novos elementos
            crossAxisAlignment: CrossAxisAlignment.stretch, // Ocupa toda a largura da tela
            children: <Widget>[
              Stack( // Foi utilizado para possibilitar a sobreposição do texto sobre a imagem
                children: <Widget>[
                  Image.asset( // Comando que chama a imagem
                    'assets/img/salgadosPage.png', // Caminho da Imagem de fundo que ocupará determinado espaço
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
                          'Salgados', // \n é quebra de linha
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

        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0), //Coloca padding simétrico, tanto na esquerda, como na direita
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0), // Arredonda apenas o canto superior esquerdo
            topRight: Radius.circular(30.0), // Arredonda apenas o canto superior direito
            ), 
            child: BottomNavigationBar (
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem( //Ícone 
                  icon: Icon(Icons.messenger_outline_rounded),
                  //Label não pode ser nula, se não dá erro
                  label: '',
                ),
            
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined,),
                  label: '',
                ),
            
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle_outline), 
                  label: '',
                ),
              ],
              currentIndex: _selectedIndex, //Posição
              selectedItemColor: const Color(0XFF93B6EE), //Botão selecionado
              unselectedItemColor: const Color(0XFF93B6EE), //Botão deselecionado
              backgroundColor: const Color(0XFFF4F4F2),
              onTap: _onItemTapped, //Função acionada ao clicar
              showSelectedLabels: false, //Evita que a label apareça quando selecionado
              showUnselectedLabels: false, //Evita que a label apareça quando deselecionado
            ),
          ),
        ),
      ),
    );
  }
}