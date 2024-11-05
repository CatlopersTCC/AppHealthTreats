import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:health_treats/cadastro.dart';
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
  int _currentPage = 0; // Alternância da páginas

  PageController _pageController = PageController(initialPage: 0); // Controller para mudar páginas

  void _onItemTapped(int index) { // Função realizada ao clicar em qualquer item da bottomNavigationBar
    setState(() {
      _selectedIndex = index;
    });

    Widget destination; // Criando a variável que controla o redirecionamento
    switch (index) {
      case 0:
        destination = Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => TelaCadastro()),
        ) as Widget; //Simulando uma ação de "sair" da seção
      break;
      case 1:
        destination = const MenuApp(); // Caso 1 acontece se clicar no 2º botão da bottomNavigationBar
      break;
      case 2:
        destination = const SobreApp(); // Caso 2 acontece se clicar no 3º botão da bottomNavigationBar
      break;
      default:
        destination = const MenuApp(); // Se não acontecer nenhum dos casos acima
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => destination), // Pegando o conteúdo da variável "destination" para redirecionar pro caso ocorrido (que indica para qual tela irá
    );
  }

  Widget _buildComment({required String name, required String text, required int rating}) { // Função que cria cada comentário com seus atributos
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5.0), // Espaçamento simétrico entre um card e outro
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 25.0, right: 10.0), // Espaçamento interno para todas as direções
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Posiciona o texto no inicio do pai, o card
          children: [
            Text( // Comentário
              name, // Variável "name" com o valor sendo o nome de quem comentou
              style: TextStyle(
                fontWeight: FontWeight.bold, // Estilo de fonte
                fontSize: 18.0, // Tamanho do nome
                color: Color(0xFF353535), // Cor do nome
              ),
            ),

            const SizedBox(height: 4.0), // Espaço entre o nome as estrelas
             
            Text( // Avaliação
              text, // Variável que recebe o que foi digitado pelo usuário como avaliação
              style: TextStyle(
                fontSize: 16.0, // Tamanho da avaliação
                color: Color(0xFF353535), // Cor da avaliação
              ),
            ),

            const SizedBox(height: 8.0), // Espaçamento entre estrelas e avaliação

            RatingBarIndicator( // Estrelas
              rating: rating.toDouble(), // Sistema da avaliação com estrelas
              itemBuilder: (context, _) => const Icon(Icons.star, color: Color(0xFFFFB800)), // Cor da estrela
              itemCount: 5, // Máximo de estrelas dentro de cada comentário
              itemSize: 20.0, // Tamanho da estrela
              direction: Axis.horizontal, // Disposição do elemento horizontalmente
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end, // Posiciona os elementos ao final do pai, a row
              children: [
                IconButton( // Criando um ícone clicável
                  icon: const Icon(Icons.thumb_up_alt_outlined, color: Color(0xFF93B6EE)), // Ícone para dar like
                  onPressed: () { // Função do ícone ao ser clicado
                    // Ação do like
                  },
                ),
                IconButton( // Criando um ícone clicável
                  icon: const Icon(Icons.thumb_down_alt_outlined, color: Color(0xFF93B6EE)), // Ícone para dar deslike
                  onPressed: () { // Função do ícone ao ser clicado
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
    var produtos = ModalRoute.of(context)!.settings.arguments as Produtos; // Colocando em uma variável todo o conteúdo vindo da tela de produtos
    return Scaffold(
      body: SingleChildScrollView( // Gera uma bala de rolagem
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
                alignment: Alignment.centerRight, // Posiciona o texto à direita
                child: Padding(
                  padding: EdgeInsets.all(12.0), // Adiciona espaçamento para todas as direções no ícone
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click, // Define o cursor
                    child: Icon(
                      Icons.search, // Ícone de pesquisa 
                      size: 30.0, // Tamanho do ícone
                      color: Color(0xFF353535), // Cor do ícone
                    ),
                  ),
                ),
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
                width: 205.0, // Largura
                height: 205.0, // Altura
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Posicionando os filhos do card no meio
                  children: [
                    Image.asset( // Chamando foto
                      produtos.foto, // Variável sendo puxada trazendo a foto
                    ),
                    Text(
                      produtos.nome, // Varíavel sendo puxada trazendo o nome do produto
                      style: TextStyle(
                        fontSize: 18.0, // Tamanho do nome do produto
                        fontFamily: 'RedHatDisplay', // Fonte estilizada
                        fontWeight: FontWeight.bold, // Estilo da fonte
                        color: Color(0xFF353535), // Cor do nome do produto
                      ),
                    ),
                  ]
                ),
              ),
            ),
          ),
             
          Padding( // Informações do produto
            padding: const EdgeInsets.only(top: 280.0, left: 21.5), // Ajustando o espaçamento
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Posicionando o elemento no início da tela
              children: <Widget>[ // Criando um widget
                Text(
                  'Ingredientes', // Título
                  style: TextStyle(
                    fontSize: 30.0, // Tamanho do título
                    fontFamily: 'RedHatDisplay', // Fonte estilizada
                    fontWeight: FontWeight.bold, // Estilo da fonte
                    color: Color(0xFF353535), // Cor do título
                  ),
                ),
                
                SizedBox(height: 6.0), // Espaço entre título e texto
                
                Text(
                  produtos.desc, // Variável sendo puxada trazendo a lista de ingredientes
                  style: TextStyle(
                    fontSize: 20.0, // Tamanho da lista de ingredientes
                    fontFamily: 'RedHatDisplay', // Fonte estilizada
                    fontWeight: FontWeight.normal, // Estilo da fonte
                    color: Color(0xFF353535), // Cor da lista de ingredientes
                  ),
                ),
              ],
            ),
          ),

          Padding( // Adiciona seção de comentários
            padding: const EdgeInsets.only(top: 400.0, left: 21.5), // Ajustando espaçamento
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Posicionando os elementos no início da tela
              children: <Widget>[ // Criando um widget
                Text(
                  'Comentários', // Título
                  style: TextStyle(
                    fontSize: 30.0, // Tamanho da fonte
                    fontFamily: 'RedHatDisplay', // Fonte estilizada
                    fontWeight: FontWeight.bold, // Estilo de fonte
                    color: Color(0xFF353535), // Cor do título
                  ),
                ),

                SizedBox(height: 6.0), // Espaço entre o título e os comentários

                Container(
                  padding: EdgeInsets.only(right: 21.5), // Adicionando espaçamento apenas para a direita
                  height: 484.0, // Altura da seção de comentários
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },

                    children: [
                      Column( // Página 1 de comentários
                        children: [
                          _buildComment(name: produtos.nomeComent, text: produtos.descComent, rating: produtos.rating), // Comentário da primeira página
                          _buildComment(name: 'Marina Sarjani', text: 'Muito bom, mas poderia ser mais barato.', rating: 4), // Comentário da primeira página
                          _buildComment(name: 'Gustavo Henrique', text: 'Gostei bastante, mas tive alguns problemas.', rating: 3), // Comentário da primeira página
                        ],
                      ),
                    
                      Column( // Página 2 de comentários
                        children: [
                          _buildComment(name: 'Militão da Silva', text: 'Cumpre o que promete.', rating: 4), // Comentário da segunda página
                          _buildComment(name: 'Kevin dos Santos', text: 'Não gostei, esperava mais.', rating: 2), // Comentário da segunda página
                          _buildComment(name: 'Daniel Biondi', text: 'Excelente! Melhor compra do ano!', rating: 5), // Comentário da segunda página
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(right: 21.5), // Espaçamento da margem da direita
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end, // Posiciona os elementos ao final do elemento pai
                    children: [
                      IconButton( // Setinha
                        icon: Icon(Icons.arrow_back, color: _currentPage == 0 ? Colors.grey : Color(0xFF93B6EE)), // Quando a seta fica azul é para indicar que o botão está ativo
                        onPressed: () { // Função
                          if (_currentPage > 0) { // Se a página atual for igual a 0, retorna a primeira página
                            _pageController.previousPage( // Primeira página de comentários
                              duration: Duration(milliseconds: 300), // Transição
                              curve: Curves.easeIn, // Forma de animação
                            );
                          }
                        },
                      ),
                      IconButton( // Setinha
                        icon: Icon(Icons.arrow_forward, color: _currentPage == 1 ? Colors.grey : Color(0xFF93B6EE)), //Quando seta fica cinza é para indicar que o botão está desativado
                        onPressed: () { // Função
                          if (_currentPage < 1) { // Se a página atual for igual a 1, retorna a segunda página
                            _pageController.nextPage( // Segunda página de comentários
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          }
                        },
                      ),

                      SizedBox(height: 30.0) // Espaçamento entre as setas e o final da página

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
        padding: const EdgeInsets.symmetric(horizontal: 20.0), //Coloca padding simétrico, tanto na esquerda, como na direita
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0), // Arredonda apenas o canto superior esquerdo
          topRight: Radius.circular(30.0), // Arredonda apenas o canto superior direito
        ), 
          child: BottomNavigationBar (
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem( // Ícone 
                icon: Icon(Icons.question_answer_outlined),
                // Label não pode ser nula, se não dá erro
                label: '',
              ),
            
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded,),
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
