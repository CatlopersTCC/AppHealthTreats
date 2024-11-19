import 'package:flutter/material.dart';
import 'package:health_treats/pesquisa.dart';
import 'package:health_treats/produtos.dart';

class InfoProduto extends StatefulWidget {
  const InfoProduto({super.key});

  @override
  _InfoProdutoState createState() => _InfoProdutoState();
}

class _InfoProdutoState extends State<InfoProduto> {
  late PageController _pageController;
  int _currentPage = 0;

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
              child: Card(
                color: const Color(0xFFF8F8F8), // Cor do fundo do card
                shape: RoundedRectangleBorder( // Arredondamento das bordas
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5, // Sombra no card
                margin: EdgeInsets.only(top: 50.0), // Margem do topo
                child: SizedBox( // Tamanho do card
                  width: 215.0, // Largura
                  height: 270.0, // Altura
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Posicionando os filhos do card no meio
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          produto.foto, // Foto puxada do argumento da tela dos produtos
                          width: double.infinity, // Ocupa toda a largura
                          fit: BoxFit.cover, // Utiliza 100% da imagem
                        ),
                      )
                    ],
                  ),
                )
              ),
            ),
            
            Padding( // Aqui tem as futuras descrições
              padding: const EdgeInsets.all(8.0),
              child: Text(
                produto.desc,
                style: const TextStyle(fontSize: 16.0),
              ),
            ),
            const SizedBox(height: 10.0),
            
            const Padding( // Título com espaçamento interno
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Comentários:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RedHatDisplay',
                ),
              ),
            ),
            
            SizedBox(
              height: 200, // Altura do PageView
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
                        return ListTile(
                          title: Text(comentario.nome),
                          subtitle: Text(comentario.desc),
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
    );
  }
}
