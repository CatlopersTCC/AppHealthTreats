import 'package:flutter/material.dart';
import 'package:health_treats/cadastro.dart';
import 'package:health_treats/menu.dart';
import 'package:url_launcher/url_launcher.dart';

// Método que abre o site da empresa
void _launchURL() async {
  const url = 'https://catloperstcc.github.io/CatlopersWebsite/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Não foi possível abrir o link: $url';
  }
}

class SobreApp extends StatelessWidget {
  const SobreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health Treats | Sobre',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SobreMenu(),
    );
  }
}

class SobreMenu extends StatefulWidget {
  const SobreMenu({super.key});

  @override
  _SobreMenu createState() => _SobreMenu();
}

class _SobreMenu extends State<SobreMenu> {
  TextEditingController _searchController = TextEditingController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) { // Função realizada ao clicar em qualquer item da bottomNavigationBar
    setState(() {
      _selectedIndex = index;
    });

    Widget destination; // Criando a variável
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
        destination = MenuApp(); // Se não acontecer nenhuma das opções acima
    }

    Navigator.push( // Pegando o conteúdo da variável "destination" para redirecionar pro caso ocorrido (que indica para qual tela irá) 
      context,
      MaterialPageRoute(builder: (context) => destination),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView (
        padding: const EdgeInsets.all(15.0), // Espaçamento interno igual para todas as direções
        child: Column(
          children: [
            SizedBox( // Definindo o tamanho da barra de pesquisa
            height: 35.0, // Altura da barra de pesquisa
              child: TextField( //Barra de pesquisa
                cursorHeight: 20.0, //Altura que o cursor vai ter dentro do TextField
                controller: _searchController, // Manipuladora que vai controlar tudo que for digitado
                decoration: InputDecoration(
                  prefixIcon: const Icon( // Definindo o estilização do ícone
                    Icons.search, // Ícone de pesquisa
                    color: Color(0XFF353535), // Cor do ícone
                  ),
                  enabledBorder: OutlineInputBorder( //Quando não selecionada a barra de pesquisa
                    borderSide: const BorderSide(
                      color:  Color(0XFF353535), //Cor da borda
                      width: 2.0, //Tamanho da da borda
                    ),
                    borderRadius: BorderRadius.circular(50.0), // Arredondamento das bordas
                  ),
                  focusedBorder: OutlineInputBorder( // Quando selecionada a barra de pesquisa 
                    borderSide: const BorderSide(
                      color:  Color(0XFF353535),
                      width: 2.5, // Tamanho da borda quando não selecionada
                    ),
                    borderRadius: BorderRadius.circular(50.0), // Altura do card
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0), // Centralizando texto verticalmente dentro da TextField
                ),
                onChanged: (value) { // Atualiza enquanto o usuário digita
                  //Lógica de pesquisa pode ser adicionada aqui
                  print('Texto digitado: $value');
                },
              ),
            ),

            const SizedBox(height: 30.0), // Espaçamento entre a barra de pesquisa e o card

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      Card( // Card Sobre Health Treats
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // Arredondamento das bordas do card
                        ),
                        elevation: 5, // Define a intensidade da sombra
                        child: SizedBox(
                          width: 425.0,  // Largura do card
                          height: 262.0, // Altura do card           
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/img/sobreMenu.png', // Caminho da imagem do card
                              fit: BoxFit.cover,
                              width: 402.0,
                              height: 242.0,
                            ),
                          ),
                        ),
                      ),
                  ]
                ),
              ]
            ),
          ),

          const Center( // Centraliza todos os elementos filhos
            child: Padding(
              padding: EdgeInsets.all(21.5), // Definindo uma margem interna comum para todas as direções
              child: Row( // Dispondo os elementos filhos em linhas 
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        'Muito prazer, \nUsuário!', // Título
                        style: TextStyle(
                          fontSize: 45.0, // Tamanho da fonte
                          color: Color(0XFF353535), // Cor da fonte
                          fontFamily: 'RedHatDisplay', // Fonte estilizada
                          fontWeight: FontWeight.bold, // Estilo da fonte
                        ),
                      ),
                    ],
                  ),
                ]
              ),
            ),
          ),

          Container(
            width: double.infinity, // Permite usar 100% da largura
            height: 384, // Altura do contâiner
            margin: EdgeInsets.only(left: 21.5, right: 21.5), // Centralizando contâiner
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // Indica que o texto comece na margem esquerda
              children: [
                const Text(
                  'Nosso objetivo é ajudar pacientes com diabetes a manter uma vida estável e saudável, oferecendo produtos de alta qualidade.', // Texto
                  textAlign: TextAlign.justify, // Justificao texto
                  style: TextStyle(
                    fontSize: 27.0, // Tamanho da fonte
                    color: Color(0XFF353535), // Cor da fonte
                    fontFamily: 'RedHatDisplay', // Fonte estilizada
                    fontWeight: FontWeight.bold, // Estilo da fonte
                  ),
                ),

                const SizedBox(height: 20.0),

                Center(
                  child: Card(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Arredondamento das bordas do card
                  ),
                  elevation: 5, // Controla a intensidade da sombra
                  color: const Color(0xFFF8F8F8), // Cor do card
                  margin: EdgeInsets.only(left: 60.0, right: 60.0), // Centralizando o card
                    child: Padding(
                      padding: EdgeInsets.all(20.0), // Adiciona padding ao Card
                      child: Center(
                        child: RichText( // Permite estilizar o texto
                          textAlign: TextAlign.center, // Centralizando o slogan
                          text: const TextSpan(
                            text: '"Vida doce, \n escolhas',
                            style: TextStyle(
                              color: Color(0XFF353535), // Cor da primeira parte do slogan
                              fontSize: 30.0, // Tamanho da fonte
                              fontFamily: 'RedHatDisplay', // Fonte estilizada
                              fontWeight: FontWeight.w700, // Estilo da fonte
                            ),
                            children: <TextSpan>[ // Estilização da palavra final do slogan
                              TextSpan(
                                text: ' saudáveis"',
                                style: TextStyle(
                                  color: Color(0XFF93B6EE), // Cor da palavra destacada
                                  fontFamily: 'RedHatDisplay',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
            
            const SizedBox(height: 20.0,), // Espaçamento entre o Card e a Row

            Row(
              crossAxisAlignment: CrossAxisAlignment.start, // Indica que a Row se posicione no início, na margem esquerda
              children: [
                // Coluna para título e texto à esquerda
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Indica ao texto que ele começe na margem esquerda, considerado o início
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 21.5), // Margem esquerda
                        child: const Text(
                          'Ouviu um Miau?', // Título
                          style: TextStyle(
                            fontSize: 35.0, // Tamanho da fonte
                            color: Color(0XFF353535), // Cor da fonte
                            fontFamily: 'RedHatDisplay', // Fonte estilizada
                            fontWeight: FontWeight.bold, // Estilo da fonte
                          ),
                        ),
                      ),

                      const SizedBox(height: 15.0), // espaçamento entre título e texto

                      Container(
                      margin: EdgeInsets.only(left: 21.5), // Margem esquerda
                      child: const Text(
                        'A CatLopers é uma empresa com o objetivo de fornecer sistemas de qualidade e de alta durabilidade.', // Texto
                        textAlign: TextAlign.justify, // Justifica o texto
                        style: TextStyle(
                          fontSize: 25.0, // Tamanho da ofnte
                          color: Color(0XFF353535), // Cor da fonte
                          fontFamily: 'RedHatDisplay', // Fonte estilizada
                          fontWeight: FontWeight.bold, // Estilo da fonte
                        ),
                      ),
                    )
                    ],
                  ),
                ),
                
                const SizedBox(width: 20.0), // Divisão horizontal

                Container(
                  width: 140, // Largura do contâiner que envolve a imagem
                  height: 160, // Altura do contâiner que envolve a imagem
                  margin: EdgeInsets.only(right: 21.5, top: 78.0), // Margem esquerda
                  alignment: Alignment.center,
                  child: Center(
                    child: Image.asset( // Comando que chama a imagem
                      'assets/img/LogoDev2.png', // Caminho da Imagem de fundo que ocupará determinado espaço
                      fit: BoxFit.cover, // Expande a imagem por todo espaço definido
                        width: double.infinity, // Utilizado para usar 100% do tamanho determinado
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 30.0), // Espaço entre o texto e o botão

            Center(
              child: ElevatedButton( // Criação do botão
                onPressed: _launchURL, // Leva ao site da empresa
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 20.0), // Definindo o tamanho vertical e horizontal do botão
                  backgroundColor: Color(0XFF93B6EE), // Cor do botão
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Arredondamento do botão
                  ),
                ),
                child: const Text(
                  "Saiba mais!", // Texto dentro do botão
                  style: TextStyle(
                    fontSize: 20.0, // Tamanho da fonte
                    fontFamily: 'RedHatDisplay', // Fonte estilizada
                    fontWeight: FontWeight.bold, // Estilo da fonte
                    color: Colors.white, // Cor da fonte
                  ),
                ),
              ),
            ),
          ]
        ),

      ),
      bottomNavigationBar: Padding( // Espaçamento interno entre os elementos
        padding: const EdgeInsets.symmetric(horizontal: 20.0), // Coloca padding simétrico, tanto na esquerda, como na direita
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0), // Arredonda apenas o canto superior esquerdo
            topRight: Radius.circular(30.0), // Arredonda apenas o canto superior direito
          ), 
          child: BottomNavigationBar (
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem( // Ícone 
                icon: Icon(Icons.exit_to_app),
                //Label não pode ser nula, se não dá erro
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: '',
              ),
          
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_rounded), 
                label: '',
              ),
            ],
            currentIndex: _selectedIndex, // Posição
            selectedItemColor: const Color(0XFF93B6EE), // Botão selecionado
            unselectedItemColor: const Color(0XFF93B6EE), // Botão deselecionado
            backgroundColor: const Color(0xFFF0EFEF), // Cor de fundo
            onTap: _onItemTapped, // Função acionada ao clicar
            showSelectedLabels: false, // Evita que a label apareça quando selecionado
            showUnselectedLabels: false, // Evita que a label apareça quando deselecionado
          ),
        ),
      )
    );
  }
}