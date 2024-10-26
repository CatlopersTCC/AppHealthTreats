import 'package:flutter/material.dart';
import 'package:health_treats/comentarios.dart';
import 'package:health_treats/menu.dart';
import 'package:health_treats/pesquisa.dart';
import 'package:health_treats/produtos.dart';
import 'package:health_treats/sobre.dart';

class InfoProdutos extends StatefulWidget {
  const InfoProdutos({super.key});
  
  @override
  _InfoState createState() => _InfoState();
}

// Classe que contém todo o conteúdo a ser exibido na tela
class _InfoState extends State<InfoProdutos> {
  
  int _selectedIndex = 0; // Variável começa nula

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
        destination = const MenuApp(); //Se não acontecer nenhuma das opções acima
    }

    Navigator.push( //Pegando o conteúdo da variável "destination" para redirecionar pro caso ocorrido (que indica para qual tela irá) 
      context,
      MaterialPageRoute(builder: (context) => destination),
    );
  }

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
              margin: EdgeInsets.only(top: 50.0),
              child: SizedBox(
                width: 205.0,
                height: 205.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      produtos.foto,
                    ),
                    Text(
                      produtos.nome,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'RedHatDisplay',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF353535),
                      ),
                    ),
                  ]
                ),
              ),
            ),
            ),

            // Informações do produto
            Padding(
              padding: const EdgeInsets.only(top: 280.0, left: 18.0), // Ajuste a margem superior conforme necessário
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Ingredientes',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'RedHatDisplay',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF353535),
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    produtos.desc,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'RedHatDisplay',
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF353535),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
                icon: Icon(Icons.question_answer_outlined),
                //Label não pode ser nula, se não dá erro
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: '',
              ),
          
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline), 
                label: '',
              ),
            ],
            currentIndex: _selectedIndex, // Posição
            selectedItemColor: const Color(0XFF93B6EE), // Botão selecionado
            unselectedItemColor: const Color(0XFF93B6EE), // Botão deselecionado
            backgroundColor: const Color(0XFFF4F4F2),
            onTap: _onItemTapped, // Função acionada ao clicar
            showSelectedLabels: false, // Evita que a label apareça quando selecionado
            showUnselectedLabels: false, // Evita que a label apareça quando deselecionado
          ),
        ),
      ),
    );
  }
}
