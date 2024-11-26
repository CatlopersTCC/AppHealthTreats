import 'package:flutter/material.dart';
import 'package:health_treats/cadastro.dart';
import 'package:health_treats/menu.dart';
import 'package:health_treats/pesquisa.dart';
import 'package:health_treats/produtos.dart';
import 'package:health_treats/sobre.dart';

class InfoProduto extends StatefulWidget {
  const InfoProduto({super.key});

  @override
  _InfoProdutoState createState() => _InfoProdutoState();
}


class _InfoProdutoState extends State<InfoProduto> {
  late PageController _pageController;
  int _currentPage = 0;

  int _selectedIndex = 0;

  void _onItemTapped(int index) { //Função realizada ao clicar em qualquer item da bottomNavigationBar
    setState(() {
      _selectedIndex = index;
    });

    Widget destination; //Criando a variável
    switch (index) {
      case 0:
        destination = Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => TelaCadastro()),
        ) as Widget; //Simulando uma ação de "sair" da seção
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
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  
  Widget build(BuildContext context) {
    // Pegando o produto passado pela rota
    final produto = ModalRoute.of(context)?.settings.arguments as Produtos;

    // Dividindo os comentários em páginas de 3 itens cada
    final List<List<dynamic>> pages = [];
    for (int i = 0; i < produto.comentarios.length; i += 3) {
      pages.add(produto.comentarios.skip(i).take(3).toList());
    }

    

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Icon(
                        Icons.arrow_back,
                        size: 30.0,
                        color: Color(0xFF353535),
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
                    child: const MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Icon(
                        Icons.search,
                        size: 30.0,
                        color: Color(0xFF353535),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Center( // Imagem do produto
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Posicionando os filhos do card no meio
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: GestureDetector(
                      onTap: () {
                        // Ao clicar na imagem, exibe um diálogo com a imagem em tamanho maior
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            insetPadding: EdgeInsets.all(0), // Faz a imagem ocupar toda a tela
                            child: Stack(
                              children: [
                                // Exibe a imagem ampliada
                                Center(
                                  child: Image.asset(
                                    produto.foto, // Foto puxada do argumento da tela dos produtos
                                    fit: BoxFit.contain, // Ajusta a imagem para não cortar
                                  ),
                                ),
                                // Botão de retorno no canto superior esquerdo
                                Positioned(
                                  top: 16, // Distância do topo
                                  left: 16, // Distância da lateral
                                  child: IconButton(
                                    icon: Icon(Icons.close, color: Color(0xFF93B6EE), size: 30),
                                    onPressed: () {
                                      Navigator.of(context).pop(); // Fecha o diálogo
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      child: Image.asset(
                        produto.foto, // Foto puxada do argumento da tela dos produtos
                        width: double.infinity, // Ocupa toda a largura
                        height: 350.0,
                        fit: BoxFit.cover, // Utiliza 100% da imagem
                      ),
                    ),
                  )
                ],
              ),
            ),
            
            Padding( // Aqui tem as futuras descrições
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
              child: Text(
                'Ingredientes',
                style: TextStyle(
                  fontFamily: 'RedHatDisplay',
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                  color: Color(0XFF353535),
                ),
              ),
            ),

            Padding( // Aqui tem as futuras descrições
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                produto.desc,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'RedHatDisplay',
                  fontWeight: FontWeight.normal,
                  fontSize: 18.0,
                  color: Color(0XFF353535),
                ),
              ),
            ),

            const SizedBox(height: 50.0),
            
            Padding( // Título com espaçamento interno
              padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                'Comentários:',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RedHatDisplay',
                  color: Color(0XFF353535),
                ),
              ),
            ),
            
            SizedBox(
              height: 330, // Altura do PageView
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: pages.length,
                itemBuilder: (context, pageIndex) {
                  return SingleChildScrollView(
                    child: Column(
                      children: pages[pageIndex].map((comentario) {
                        return Card(
                        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
                        color: Color(0xFFF0EFEF),
                        child: ListTile(
                          title: Text(
                            comentario.nome,
                            style: TextStyle(
                              fontFamily: 'RedHatDisplay',
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF353535),
                            )
                          ),
                          subtitle: Text(
                            comentario.desc,
                            style: TextStyle(
                              fontFamily: 'RedHatDisplay',
                              fontWeight: FontWeight.normal,
                              color: Color(0XFF353535),
                              fontSize: 18.0,
                            )
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(
                              5,
                              (starIndex) => Icon(
                                starIndex < comentario.rating
                                    ? Icons.star
                                    : Icons.star_border,
                                color: Color(0xFF93B6EE),
                              ),
                            ),
                          ),
                        ),
                        );
                      }).toList(),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 21.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: _currentPage == 0 ? Colors.grey : Color(0xFF93B6EE),
                    ),
                    onPressed: () {
                      if (_currentPage > 0) {
                        _pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: _currentPage == pages.length - 1
                          ? Colors.grey
                          : Color(0xFF93B6EE),
                    ),
                    onPressed: () {
                      if (_currentPage < pages.length - 1) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0), // Espaçamento interno uniforme
        child: ClipRRect( // Estrutura para realizar o arredondamento 
          borderRadius: const BorderRadius.only( // Arredondando da bottomNavigationBar
            topLeft: Radius.circular(30.0), // Arredondamento superior esquerdo
            topRight: Radius.circular(30.0), // Arredondamento superior direito
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[ // Elementos dentro da bottomNavigationBar
              BottomNavigationBarItem(
                icon: Icon(Icons.exit_to_app), // Ícone para a saída
                label: '', // Label não pode ser nula
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), // Ícone para a home
                label: '', // Label não pode ser nula
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline), // Ícone para o sobre
                label: '', // Label não pode ser nula
              ),
            ],
            currentIndex: _selectedIndex, // Posição
            selectedItemColor: const Color(0XFF93B6EE), // Botão selecionado
            unselectedItemColor: const Color(0XFF93B6EE), // Botão sem estar selecionado
            backgroundColor: const Color(0xFFF0EFEF), // Cor do fundo
            onTap: _onItemTapped, // Função acionada ao clicar
            showSelectedLabels: false, // Evita que a label apareça quando selecionado
            showUnselectedLabels: false, // Evita que a label apareça quando deselecionado
          ),
        ),
      ),
    );
  }
}
