import 'package:flutter/material.dart';
import 'package:health_treats/bebidas.dart';
import 'package:health_treats/comentarios.dart';
import 'package:health_treats/doces.dart';
import 'package:health_treats/massas.dart';
import 'package:health_treats/salgados.dart';
import 'package:health_treats/sobre.dart';

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health Treats | Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MenuInicio(),
    );
  }
}

class MenuInicio extends StatefulWidget {
  const MenuInicio({super.key});

  @override
  _MenuInicio createState() => _MenuInicio();
}

class _MenuInicio extends State<MenuInicio> {
  TextEditingController _searchController = TextEditingController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) { // Função realizada ao clicar em qualquer item da bottomNavigationBar
    setState(() {
      _selectedIndex = index;
    });

    Widget destination; // Criando a variável que controla o redirecionamento
    switch (index) {
      case 0:
        destination = const ComentariosApp(); // Caso 0 acontece se clicar no 1º botão da bottomNavigationBar
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
      body: SingleChildScrollView ( // Código para adicionar a barra de rolagem lateral
         padding: const EdgeInsets.all(20.0), // Espaçamento interno
          child: Column( // Organiza os filhos em coluna
           children:  [
            SizedBox( // Definindo o tamanho da barra de pesquisa
            height: 35.0,
              child: TextField( // Barra de pesquisa
                cursorHeight: 15.0, //Altura que o cursor vai ter dentro do TextField
                controller: _searchController, // Controller utilizada
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search, 
                    color: Color(0XFF353535),
                  ),
                  enabledBorder: OutlineInputBorder( // Quando não selecionada a barra de pesquisa
                    borderSide: const BorderSide(
                      color:  Color(0XFF353535), // Cor da borda
                      width: 2.0, //Tamanho da da borda
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedBorder: OutlineInputBorder( // Quando selecionada a barra de pesquisa 
                    borderSide: const BorderSide(
                      color:  Color(0XFF353535),
                      width: 2.5,
                    ),
                    borderRadius: BorderRadius.circular(50.0), // Arredondamento das bordas
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0), // Centralizando texto verticalmente dentro da TextField
                ),
                onChanged: (value) { // Atualiza simultaneamente à entrada de dados
                  //Lógica de pesquisa pode ser adicionada aqui
                  print('Texto digitado: $value');
                },
              ),
            ),
            
            const SizedBox(height: 16.0),
            
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row( // Organiza os filhos em linha
                crossAxisAlignment: CrossAxisAlignment.start, // Instrução para o texto se posicionar na esquerda, a posição inicial
                children: <Widget>[
                  Text(
                    'Olá, Nome.',
                    style: TextStyle( // Estilização do texto
                      fontSize: 46.0,
                      fontFamily: 'RedHatDisplay', // Fonte utilizada no projeto
                      fontWeight: FontWeight.bold, //Negrito
                      color: Color(0XFF353535),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10.0,),
          
          Center(
            child: Row( // Deixando um card ao lado do outro
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Espaçando um card do outro
              children: [
            // Tornando card clicável
            InkWell(
            onTap: () { // Função executada ao clicar
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Bebidas()), // Ao clicar direciona para a página "Doces"
              );
            },

           // Card das bebidas
           child: Card(
              shape: RoundedRectangleBorder( // Arredondando as bordas do card
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: const EdgeInsets.all(10.0),   
              child: SizedBox(
                width: 200.0, // Largura do card
                height: 126.0, // Altura do card            
                  child: ClipRRect( // Recorta os cantos de um widget filho
                    borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/img/bebidasMenu.png',
                      fit: BoxFit.cover, // Expande a imagem para ocupar o elemento pai inteiro
                      width: 200.0, // Largura da imagem
                      height: 127.0, // Altura da imagem
                    ),
                  ),
                ),
              ),
            ),

            InkWell(
            onTap: () { // Função executada ao clicar
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Salgados()), // Ao clicar envia para a página "Salgados"
              );
            },

            //Card dos salgados
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: const EdgeInsets.all(10.0),   
              child: SizedBox(
                width: 200.0, 
                height: 126.0,            
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/img/salgadosMenu.png',
                      fit: BoxFit.cover,
                      width: 200.0, 
                      height: 127.0,
                    ),
                  ),
                ),
              ),
            ),

              ]
            ),
          ),

          Center( // Centraliza todos os elementos dentro da estrutura
            child: Row( 
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Espaça um card do outro
              children: [

            InkWell(
            onTap: () { // Função executada ao clicar
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Doces()), // Ao clicar envia para a página "Doces"
              );
            },

            // Card dos doces
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: const EdgeInsets.all(10.0),   
              child: SizedBox(
                width: 200.0, 
                height: 126.0,            
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/img/docesMenu.png',
                      fit: BoxFit.cover,
                      width: 200.0,
                      height: 127.0,
                    ),
                  ),
                ),
              ),
            ),

            InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Massas()), // Ao clicar envia para a página "Massas"
              );
            },

            // Card das massas
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5, // Adiciona sombra ao elemento
              margin: const EdgeInsets.all(10.0),   
              child: SizedBox(
                width: 200.0, // Largura do card
                height: 126.0, // Altura do card            
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/img/massasMenu.png',
                      fit: BoxFit.cover,
                      width: 200.0, // Largura da imagem
                      height: 127.0, // Altura da imagem
                    ),
                  ),
                ),
              ),
            ),

              ]
            ),
          ),

          const SizedBox(height: 40.0,),

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Conheça mais sobre nós!', // Título acima do card
                    style: TextStyle(
                      fontFamily: 'RedHatDisplay',
                      fontWeight: FontWeight.w500,
                      fontSize: 22.0,
                      color: Color(0XFF353535),
                    ),
                  ),

            InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SobreApp()), // Redireciona o usuário para a tela "Sobre"
              );
            },
            
            // Card Sobre Health Treats
            child: Card( 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              child: SizedBox(
                width: 425.0, 
                height: 262.0,            
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/img/sobreMenu.png',
                      fit: BoxFit.cover,
                      width: 402.0,
                      height: 242.0,
                    ),
                  ),
                ),
              ),
            ),

                  ]
                ),
              ]
            ),
          )
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
      )
    );
  }
}

