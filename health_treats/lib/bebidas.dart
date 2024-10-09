import 'package:flutter/material.dart';
import 'package:health_treats/comentarios.dart';
import 'package:health_treats/menu.dart';
import 'package:health_treats/sobre.dart';
// import 'package:health_treats/produtos.dart';

class Bebidas extends StatefulWidget {
  const Bebidas({super.key});
  
  @override
  _BebidasState createState() => _BebidasState();
}

// Classe que contém todo o conteúdo a ser exibido na tela
class _BebidasState extends State<Bebidas> {
  // String nomeProd = '';
  // String valorProd = '';
  // String pathImg = '';
  // String descProd = '';
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
        destination = const MenuApp(); //Se não acontecer nenhuma das opções acima
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
    title: 'Bebidas | Page',
    home: Scaffold(
      body: SingleChildScrollView(
        child: Stack(
        children: <Widget>[
          // Imagem de fundo
          Image.asset(
            'assets/img/bebidasPage.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 400.0,
          ),
          
          // Flecha de retorno
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
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
          ),

           // Barra de pesquisa
          GestureDetector(
            onTap: () {
              Navigator.pop(context); // Volta para a página anterior, "apaga a sessão"
            },
            child: const Align(
              alignment: Alignment.centerRight, // Alinha o texto à direita
              child: Padding(
                padding: EdgeInsets.all(12.0), // Adicionando margem ao ícone apenas para cima e esquerda
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
            top: 70.0, // Define a distância do Text para a margem superior
            left: 30.0, // Define a distância do Text para a margem esquerda
            child: Column( // Criando uma coluna para alocar o Text
              crossAxisAlignment: CrossAxisAlignment.start, // Alinha o texto no início, esquerda
              children: <Widget>[
                Text( // Criando o texto que irá se sobrepor a imagem
                  'Bebidas', // \n é quebra de linha
                  style: TextStyle( // Comando utilizado para estilizar o texto
                    fontSize: 50.0, // Definindo o tamanho da fonte
                    fontWeight: FontWeight.bold, // Definindo o estilo da fonte (itálico, negrito, etc)
                    color: Colors.white, // Definindo a cor do texto
                    height: 1.4, // Definindo a altura, que servirá como espaçamento de uma linha a outra
                  ),
                ),
              ],
            ),
          ),

          Column(
            children: [
              const SizedBox(height: 140.0), // Espaço correspondente à posição dos cards
              // Primeira linha de cards
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Card(
                      color: const Color(0XFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      margin: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: 200.0,
                        height: 230.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 70.0,
                              backgroundImage: AssetImage('assets/img/salgadinho.png'),
                            ),
                            const SizedBox(height: 18.0),
                            const Text(
                              'Bebidas',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF353535),
                              ),
                            ),
                            const SizedBox(height: 1.0),
                            const Text(
                              'R\$5,00',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color(0XFF353535),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 15.0), //Espaçamento lateral entre um card e outro

                  InkWell(
                    child: Card(
                      color: const Color(0XFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      margin: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: 200.0,
                        height: 230.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 70.0,
                              backgroundImage: AssetImage('assets/img/salgadinho.png'),
                            ),
                            const SizedBox(height: 18.0),
                            const Text(
                              'Bebidas',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF353535),
                              ),
                            ),
                            const SizedBox(height: 1.0),
                            const Text(
                              'R\$5,00',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color(0XFF353535),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15.0), // Espaço entre as linhas de cards
              
              // Segunda linha de cards
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Card(
                      color: const Color(0XFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      margin: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: 200.0,
                        height: 230.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 70.0,
                              backgroundImage: AssetImage('assets/img/salgadinho.png'),
                            ),
                            const SizedBox(height: 18.0),
                            const Text(
                              'Bebidas',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF353535),
                              ),
                            ),
                            const SizedBox(height: 1.0),
                            const Text(
                              'R\$5,00',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color(0XFF353535),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 15.0),

                  InkWell(
                    child: Card(
                      color: const Color(0XFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      margin: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: 200.0,
                        height: 230.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 70.0,
                              backgroundImage: AssetImage('assets/img/salgadinho.png'),
                            ),
                            const SizedBox(height: 18.0),
                            const Text(
                              'Bebidas',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF353535),
                              ),
                            ),
                            const SizedBox(height: 1.0),
                            const Text(
                              'R\$5,00',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color(0XFF353535),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0), // Espaço entre as linhas de cards
              
              // Terceira linha de cards
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Card(
                      color: const Color(0XFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      margin: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: 200.0,
                        height: 230.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 70.0,
                              backgroundImage: AssetImage('assets/img/salgadinho.png'),
                            ),
                            const SizedBox(height: 18.0),
                            const Text(
                              'Bebidas',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF353535),
                              ),
                            ),
                            const SizedBox(height: 1.0),
                            const Text(
                              'R\$5,00',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color(0XFF353535),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 15.0),

                  InkWell(
                    child: Card(
                      color: const Color(0XFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      margin: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: 200.0,
                        height: 230.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 70.0,
                              backgroundImage: AssetImage('assets/img/salgadinho.png'),
                            ),
                            const SizedBox(height: 18.0),
                            const Text(
                              'Bebidas',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF353535),
                              ),
                            ),
                            const SizedBox(height: 1.0),
                            const Text(
                              'R\$5,00',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color(0XFF353535),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
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
                icon: Icon(Icons.messenger_outline_rounded),
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
    )
   );
  }
}
