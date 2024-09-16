import 'package:flutter/material.dart';
import 'package:health_treats/login.dart';

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
         padding: const EdgeInsets.all(20.0),
          child: Column(
           children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Pesquisar',
                prefixIcon: const Icon(
                  Icons.search, 
                  color: Color(0xff93B6EE),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color:  Color(0xff93B6EE)),
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
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10.0,),
          
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5, //Colocando intensidade na sombra
              margin: const EdgeInsets.all(10),               
              child: Column(
                children: <Widget>[
                    Image.asset(
                      'assets/img/bebidasMenu.png',
                      fit: BoxFit.cover,
                    ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: const EdgeInsets.all(10),               
              child: Column(
                children: <Widget>[
                    Image.asset(
                      'assets/img/salgadosMenu.png',
                      fit: BoxFit.cover,
                    ),
                ],
              ),
            ),
              ]
              
            ),
          ),
            
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: const EdgeInsets.all(10),               
              child: Column(
                children: <Widget>[
                    Image.asset(
                      'assets/img/docesMenu.png',
                      fit: BoxFit.cover,
                    ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: const EdgeInsets.all(10),               
              child: Column(
                children: <Widget>[
                    Image.asset(
                      'assets/img/massasMenu.png',
                      fit: BoxFit.cover,
                    ),
                ],
              ),
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
            BottomNavigationBarItem(
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

