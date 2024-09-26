import 'package:flutter/material.dart';
import 'package:health_treats/comentarios.dart';
import 'package:health_treats/menu.dart';

class SobreApp extends StatelessWidget {
  const SobreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Treats || Sobre',
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
        padding: const EdgeInsets.all(20.0), //Espaçamento interno
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
                  border: OutlineInputBorder( //Quando não selecionada a barra de pesquisa
                    borderSide: const BorderSide(
                      color:  Color(0XFF353535), //Cor da borda
                      width: 2.0, //Tamanho da da borda
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedBorder: OutlineInputBorder( //Quando selecionada a barra de pesquisa 
                    borderSide: const BorderSide(
                      color:  Color(0XFF353535),
                      width: 2.0,
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
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]
                ),
              ]
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