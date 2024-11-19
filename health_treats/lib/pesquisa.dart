import 'package:flutter/material.dart';
import 'package:health_treats/bebidas.dart';
import 'package:health_treats/cadastro.dart';
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
  // ignore: library_private_types_in_public_api
  _PesquisaApp createState() => _PesquisaApp();
}

class _PesquisaApp extends State<PesquisaApp> {
  TextEditingController _searchController = TextEditingController();
  int _selectedIndex = 0;

  // Lista completa de itens pesquisáveis
  List<String> _items = ['Chá', 'Café', 'Refrigerante', 'Salgadinho', 'Bolacha', 'Geleia', 'Chocolate', 'Cookies', 'Panquecas', 'Pão de Queijo', 'Waffles'];

  // Lista que será exibida (inicialmente vazia)
  List<String> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    // Inicialmente, começa vazio como definido acima
    _filteredItems = [];
  }

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
        destination = MenuApp(); // Se não acontecer nenhuma das opções acima
    }
    Navigator.push( // Pegando o conteúdo da variável "destination" para redirecionar pro caso ocorrido (que indica para qual tela irá) 
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
      body: SingleChildScrollView( // Código para adicionar a barra de rolagem lateral
        padding: const EdgeInsets.all(20.0), // Espaçamento interno
        child: Column( // Organiza os filhos em coluna
          children: [
            SizedBox( // Definindo o tamanho da barra de pesquisa
              height: 35.0, // Aumenta a altura da barra de pesquisa
              child: TextField(
                cursorHeight: 15.0, // Tamanho do cursor dentro da barra de pesquisa
                controller: _searchController, // Controller utilizada
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
                      color:  Color(0XFF353535), // Cor da borda
                      width: 2.0, // Tamanho da da borda
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedBorder: OutlineInputBorder( // Quando selecionada a barra de pesquisa 
                    borderSide: const BorderSide(
                      color:  Color(0xff93B6EE),
                      width: 2.5,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 8.0), // Altura do texto dentro da barra
                  suffixIcon: _searchController.text.isNotEmpty // Se não houver nada digitado, o ícone de apagar será exibido
                    ? Padding(
                        padding: const EdgeInsets.only(right: 6.0), // Ajusta a posição do ícone
                        child: IconButton( // Botão que contém um ícone dentro
                          icon: const Icon(Icons.clear), // Ícone de apagar
                          onPressed: () {
                            _searchController.clear(); // Limpa o texto da controller
                            _filterItems(''); // Função para apagar o conteúdo
                          },
                          padding: EdgeInsets.zero, // Remove o padding padrão
                        ),
                      )
                    : null, // Se o texto estiver vazio nenhum ícone é exibido
                ),
                onChanged: _filterItems, // Função chamada ao digitar
              ),
            ),

            const SizedBox(height: 20), // Espaçamento

            // Exibe os itens filtrados caso existam
            if (_filteredItems.isNotEmpty)
              ListView.builder(
                shrinkWrap: true, // A visualização de rolagem se ajusta ao tamanho do conteúdo
                itemCount: _filteredItems.length, // Conta o número de elementos para mostrar na tela
                itemBuilder: (context, index) {
                  return Card(
                    color: Color(0xFFF0EFEF),
                    elevation: 3, // Adiocina sombra para o elemento
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile( // Estrutura que organiza os elementos dentro de uma única linha
                      leading: Icon( // Ícone antes do texto, principal
                        Icons.fastfood_outlined,
                        color: Colors.blueAccent.shade100,
                      ),
                      title: Text(
                        _filteredItems[index], // Posições da index, ou seja, todos os itens 
                        style: const TextStyle(
                          fontSize: 18,
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16), // Definindo ícone de seta para ao final do widget, utilizado dentro da estrutura de um ListTile

                      onTap: () { // Função executada no clique
                        // Navegação dependendo de qual item for selecionado
                        if (_filteredItems[index] == 'Chá' || _filteredItems[index] == 'Refrigerante' || _filteredItems[index] == 'Café') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Bebidas()), // Se o usuário selecionar "Bebidas" redireciona para a página
                          );
                        } else if (_filteredItems[index] == 'Bolacha' || _filteredItems[index] == 'Salgadinho') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Salgados()), // Se o usuário selecionar "Salgados" redireciona para a página
                          );
                        } else if (_filteredItems[index] == 'Chocolate' || _filteredItems[index] == 'Cookies' || _filteredItems[index] == 'Geleia') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Doces()), // Se o usuário selecionar "Doces" redireciona para a página
                          );
                        } else if (_filteredItems[index] == 'Pão de Queijo' || _filteredItems[index] == 'Waffles' || _filteredItems[index] == 'Panquecas') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Massas()), // Se o usuário selecionar "Massas" redireciona para a página
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
                  fontFamily: 'RedHatDisplay',
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0), // Espaçamento interno uniforme
        child: ClipRRect( // Estrutura para realizar o arredondamento 
          borderRadius: const BorderRadius.only( // Arredondando da bottomNavigationBar
            topLeft: Radius.circular(30.0), // Arredondamento superior esquerdo
            topRight: Radius.circular(30.0), // Arredondamento superior direito
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[ // Elementos dentro da bottomNavigationBar
              BottomNavigationBarItem(
                icon: Icon(Icons.exit_to_app), // Ícone para a saída
                label: '', // Label não pode ser nula
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), // Ícone para a home
                label: '', // Label não pode ser nula
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline), // Ícone para o sobre
                label: '', // Label não pode ser nula
              ),
            ],
            currentIndex: _selectedIndex, // Posição
            selectedItemColor: const Color(0XFF93B6EE), // Botão selecionado
            unselectedItemColor: const Color(0XFF93B6EE), // Botão sem estar selecionado
            backgroundColor: const Color(0xFFF0EFEF), // Cor do fundo
            onTap: _onItemTapped, // Função acionada ao clicar
            showSelectedLabels: false, // Evita que a label apareça quando selecionado
            showUnselectedLabels: false, // Evita que a label apareça quando deselecionado
          ),
        ),
      ),
    );
  }
}
