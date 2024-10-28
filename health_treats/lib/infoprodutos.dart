import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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

class _InfoState extends State<InfoProdutos> {
  int _selectedIndex = 0;
  int _currentPage = 0;
  PageController _pageController = PageController(initialPage: 0);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    Widget destination;
    switch (index) {
      case 0:
        destination = const ComentariosApp();
      break;
      case 1:
        destination = const MenuApp();
      break;
      case 2:
        destination = const SobreApp();
      break;
      default:
        destination = const MenuApp();
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => destination),
    );
  }

  // Função que cria cada comentário com o nome, texto, estrelas, like e deslike
  Widget _buildComment({required String name, required String text, required int rating}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Color(0xFF353535),
              ),
            ),
            const SizedBox(height: 4.0),
            RatingBarIndicator(
              rating: rating.toDouble(),
              itemBuilder: (context, _) => const Icon(Icons.star, color: Color(0xFF93B6EE)),
              itemCount: 5,
              itemSize: 20.0,
              direction: Axis.horizontal,
            ),
            const SizedBox(height: 8.0),
            Text(
              text,
              style: TextStyle(fontSize: 16.0, color: Color(0xFF353535)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.thumb_up_alt_outlined, color: Color(0xFF93B6EE)),
                  onPressed: () {
                    // Ação do like
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.thumb_down_alt_outlined, color: Color(0xFF93B6EE)),
                  onPressed: () {
                    // Ação do deslike
                  },
                ),
              ],
            ),
          ],
        ),
      ),
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
              padding: const EdgeInsets.only(top: 280.0, left: 21.5), // Ajuste a margem superior conforme necessário
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

            // Adiciona seção de comentários com PageView
            Padding(
              padding: const EdgeInsets.only(top: 400.0, left: 21.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Comentários',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'RedHatDisplay',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF353535),
                    ),
                  ),

                  SizedBox(height: 6.0),

                  Container(
                    padding: EdgeInsets.only(right: 21.5),
                    height: 484.0,
                    child: PageView(
                      controller: _pageController,
                      onPageChanged: (index) {
                        setState(() {
                          _currentPage = index;
                        });
                      },
                      children: [
                        // Página 1 de comentários
                        Column(
                          children: [
                            _buildComment(name: 'Gama Russi', text: 'Ótimo produto, recomendo!', rating: 5),
                            _buildComment(name: 'Marina Sarjani', text: 'Muito bom, mas poderia ser mais barato.', rating: 4),
                            _buildComment(name: 'Gustavo Henrique', text: 'Gostei bastante, mas tive alguns problemas.', rating: 3),
                          ],
                        ),
                        // Página 2 de comentários
                        Column(
                          children: [
                            _buildComment(name: 'Militão da Silva', text: 'Cumpre o que promete.', rating: 4),
                            _buildComment(name: 'Kevin dos Santos', text: 'Não gostei, esperava mais.', rating: 2),
                            _buildComment(name: 'Daniel Biondi', text: 'Excelente! Melhor compra do ano!', rating: 5),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(right: 21.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back, color: _currentPage == 0 ? Colors.grey : Color(0xFF93B6EE)),
                          onPressed: () {
                            if (_currentPage > 0) {
                              _pageController.previousPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                            }
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward, color: _currentPage == 1 ? Colors.grey : Color(0xFF93B6EE)),
                          onPressed: () {
                            if (_currentPage < 1) {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                            }
                          },
                        ),

                        SizedBox(height: 20.0)

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.question_answer_outlined),
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
            currentIndex: _selectedIndex,
            selectedItemColor: const Color(0XFF93B6EE),
            unselectedItemColor: const Color(0XFF93B6EE),
            backgroundColor: const Color(0XFFF4F4F2),
            onTap: _onItemTapped,
            showSelectedLabels: false,
            showUnselectedLabels: false,
          ),
        ),
      ),
    );
  }
}
