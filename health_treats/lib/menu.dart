import 'package:flutter/material.dart';
import 'package:health_treats/bebidas.dart';
import 'package:health_treats/login.dart';
import 'package:health_treats/doces.dart';
import 'package:health_treats/massas.dart';
import 'package:health_treats/salgados.dart';

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Treats || Menu',
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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView (
         padding: const EdgeInsets.all(20.0), //Espaçamento interno
          child: Column(
           children: [
            TextField( //Barra de pesquisa
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Pesquisar',
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
              ),
              onChanged: (value) {

                //Lógica de pesquisa pode ser adicionada aqui
                print('Texto digitado: $value');
              },
            ),
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Olá, [nome_usuário]',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold, //Negrito
                      color: Color(0XFF353535),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10.0,),
          
          Center(
            child: Row( //Deixando um card ao lado do outro
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

            // Tornando card clicável
            InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Bebidas()), // Ao clicar envia para a página "Doces"
              );
            },
 
           child: Card( //Card das bebidas
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: const EdgeInsets.all(15),   
              child: SizedBox(
                width: 200.0, // Largura do card
                height: 126.0, // Altura do card            
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/img/bebidasMenu.png',
                      fit: BoxFit.cover,
                      width: 200.0, // Largura da imagem
                      height: 127.0, // Altura da imagem
                    ),
                  ),
                ),
              ),
            ),

            InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Salgados()), // Ao clicar envia para a página "Doces"
              );
            },

            child: Card( //Card dos salgados
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: const EdgeInsets.all(15),   
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

          Center( // 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

            InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Doces()), // Ao clicar envia para a página "Doces"
              );
            },

            child: Card( //Card dos doces
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: const EdgeInsets.all(15),   
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
                MaterialPageRoute(builder: (context) => const Massas()), // Ao clicar envia para a página "Doces"
              );
            },

            child: Card( //Card das massas
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: const EdgeInsets.all(15),   
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Column(
                  children: [
                    const Text(
                      'Conheça mais sobre nós!', // Título acima do card
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0XFF353535),
                  ),
                  ),

            InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Doces()), //Trocar para o caminho real
              );
            },

            child: Card( //Card Sobre Health Treats
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: const EdgeInsets.all(10),  
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

