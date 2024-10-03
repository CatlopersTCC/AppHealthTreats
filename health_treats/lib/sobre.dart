import 'package:flutter/material.dart';
import 'package:health_treats/comentarios.dart';
import 'package:health_treats/menu.dart';

class SobreApp extends StatelessWidget {
  const SobreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    return Scaffold(
      body: SingleChildScrollView (
        padding: const EdgeInsets.all(15.0), //Espaçamento interno
        child: Column(
          children: [
            SizedBox( //Definindo o tamanho da barra de pesquisa
            height: 35.0,
              child: TextField( //Barra de pesquisa
                cursorHeight: 20.0, //Altura que o cursor vai ter dentro do TextField
                controller: _searchController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search, 
                    color: Color(0XFF353535),
                  ),
                  enabledBorder: OutlineInputBorder( //Quando não selecionada a barra de pesquisa
                    borderSide: const BorderSide(
                      color:  Color(0XFF353535), //Cor da borda
                      width: 2.0, //Tamanho da da borda
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedBorder: OutlineInputBorder( //Quando selecionada a barra de pesquisa 
                    borderSide: const BorderSide(
                      color:  Color(0XFF353535),
                      width: 2.5,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0), //Centralizando texto verticalmente dentro da TextField
                ),
                onChanged: (value) {
                  //Lógica de pesquisa pode ser adicionada aqui
                  print('Texto digitado: $value');
                },
              ),
            ),

            const SizedBox(height: 30.0),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      Card( //Card Sobre Health Treats
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
                  ]
                ),
              ]
            ),
          ),

          SizedBox(height: 30.0,),

          const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      'Muito prazer, \n[nome_usuário]',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ]
            ),
          ),

          const SizedBox(height: 30.0,),

          Container(
            width: double.infinity,
            height: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Nosso objetivo é ajudar pacientes com diabetes a manter uma vida estável e saudável, oferecendo produtos de alta qualidade.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 50.0),

                Center(
                  child: Card(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  color: const Color.fromARGB(255, 230, 245, 255),
                  margin: EdgeInsets.only(left: 60.0, right: 60.0),
                    child: Padding(
                      padding: EdgeInsets.all(20.0), // Adiciona padding ao Card
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            text: '"Vida doce, \n escolhas',
                            style: TextStyle(
                              color: Color(0XFF353535),
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' saudáveis"',
                                style: TextStyle(
                                  color: Color(0XFF93B6EE),
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


                const SizedBox(height: 30.0,),

                Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft, // Alinha o container à esquerda
                    child: Container(
                      width: 300,
                      height: 180,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ouviu um Miau?',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'A CatLopers é uma empresa com o objetivo de fornecer sistemas de qualidade e de alta durabilidade.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 10), 
                  
                  Container(
                    width: 160,
                    height: 180,
                    child: Center(
                      child: Image.asset( //Comando que chama a imagem
                        'assets/img/LogoDev2.png', // Caminho da Imagem de fundo que ocupará determinado espaço
                        fit: BoxFit.cover, // Expande a imagem por todo espaço definido
                        width: double.infinity, // Utilizado para usar 100% do tamanho determinado
                      ),
                    ),
                  ),
                ],
              )
              ]
            ),
          ),

          const SizedBox(height: 30.0,),

          SizedBox( // Definição de um espaço que servirá como botão
            width: 230, // Ocupa toda a largura disponível
            child: ElevatedButton( // Criando o botão de entrar
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MenuApp(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom( // Estilizando o botão
                // O comando abaixo foi utlizado para retirar um sublinhado de aviso
                // ignore: use_full_hex_values_for_flutter_colors
                backgroundColor: const Color(0xff93B6EE), // Cor de fundo do botão
                padding: const EdgeInsets.symmetric(vertical: 20), // Ajusta o padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0), // Definindo o arredondamento da borda
                ),
              ),
              child: const Text( // Comando para a criação de texto
                'Saiba mais!', // Texto a ser exibido dentro do botão
                style: TextStyle( // Estilização do botão
                  fontSize: 18.0, // Tamanho do texto
                  fontWeight: FontWeight.bold, // Definindo o estilo da fonte (itálico, negrito, etc)
                  color: Colors.white, // Cor do texto
                ), // Fim do TextStyle
              ), // Fim do Text
            ), // Fim Elevated Button
          ), // Fim do Sized Box
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
      )
    );
  }
}