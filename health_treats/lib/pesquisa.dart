import 'package:flutter/material.dart';
import 'package:health_treats/bebidas.dart';
import 'package:health_treats/comentarios.dart';
import 'package:health_treats/doces.dart';
import 'package:health_treats/massas.dart';
import 'package:health_treats/menu.dart';
import 'package:health_treats/salgados.dart';
import 'package:health_treats/sobre.dart';

class Pesquisa extends StatelessWidget {
  const Pesquisa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pesquisar...',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFF1F1F1),
      ),
      home: const PesquisaApp(),
    );
  }
}

class PesquisaApp extends StatefulWidget {
  const PesquisaApp({super.key});

  @override
  _PesquisaApp createState() => _PesquisaApp();
}

class _PesquisaApp extends State<PesquisaApp> {
  TextEditingController _searchController = TextEditingController();
  int _selectedIndex = 0;

  // Lista completa de itens pesquisáveis
  List<String> _items = ['Bebidas', 'Salgados', 'Doces', 'Massas'];

  // Lista que será exibida (inicialmente vazia)
  List<String> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    // Inicialmente, começa vazio como definido acima
    _filteredItems = [];
  }

  void _onItemTapped(int index) {
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

  void _filterItems(String query) {
    setState(() {
      _filteredItems = _items
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 35.0, // Aumenta a altura da barra de pesquisa
              child: TextField(
                cursorHeight: 15.0, // Tamanho do cursor dentro da barra de pesquisa
                controller: _searchController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xFF353535),
                  ),
                  hintText: 'Pesquisar...', // Texto de dentro da barra de pesquisa
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color:  Color(0XFF353535), //Cor da borda
                      width: 2.0, //Tamanho da da borda
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedBorder: OutlineInputBorder( //Quando selecionada a barra de pesquisa 
                    borderSide: const BorderSide(
                      color:  Color(0xff93B6EE),
                      width: 2.5,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                  suffixIcon: _searchController.text.isNotEmpty
                    ? Padding(
                        padding: const EdgeInsets.only(right: 6.0), // Ajusta a posição do ícone
                        child: IconButton(
                          icon: const Icon(Icons.clear), // Ícone de apagar
                          onPressed: () {
                            _searchController.clear(); // Função para apagar o conteúdo
                            _filterItems(''); 
                          },
                          padding: EdgeInsets.zero, // Remove o padding padrão
                        ),
                      )
                    : null,
                ),
                onChanged: _filterItems,
              ),
            ),
            const SizedBox(height: 20), // Espaçamento

            // Exibe os itens filtrados caso existam
            if (_filteredItems.isNotEmpty)
              ListView.builder(
                shrinkWrap: true,
                itemCount: _filteredItems.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.fastfood_outlined,
                        color: Colors.blueAccent.shade100,
                      ),
                      title: Text(
                        _filteredItems[index],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () {
                        // Navegação dependendo de qual item for selecionado
                        if (_filteredItems[index] == 'Bebidas') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Bebidas()),
                          );
                        } else if (_filteredItems[index] == 'Salgados') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Salgados()),
                          );
                        } else if (_filteredItems[index] == 'Doces') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Doces()),
                          );
                        } else if (_filteredItems[index] == 'Massas') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Massas()),
                          );
                        }
                      },
                    ),
                  );
                },
              ),
            if (_filteredItems.isEmpty && _searchController.text.isNotEmpty) // Caso não seja nenhuma das opções
              const Text(
                'Nenhum resultado encontrado.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
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
      ),
    );
  }
}
