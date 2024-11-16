import 'package:flutter/material.dart';
import 'package:health_treats/cadastro.dart';
import 'package:health_treats/menu.dart';
import 'package:health_treats/pesquisa.dart';
import 'package:health_treats/sobre.dart';
import 'package:health_treats/infoProdutos.dart';
import 'package:health_treats/produtos.dart';

class Doces extends StatefulWidget {
  const Doces({super.key});
  
  @override
  _DocesState createState() => _DocesState();
}

// Classe que contém todo o conteúdo a ser exibido na tela
class _DocesState extends State<Doces> {

   final List<Produtos> produtos = [

    Produtos(
      nome: 'Geleia de Uva',
      valor: 'R\$20.00',
      foto: 'assets/img/doces/Geleia_de_uva.png',
      desc: 'Descrição rápida',
      comentarios: [
        Comentario(nome: 'Aline Domingues Cidade', desc: 'Excelente opção para quem controla a glicemia!', rating: 4),
        Comentario(nome: 'André Lucas', desc: 'Sabor autêntico e saudável!', rating: 5),
        Comentario(nome: 'Jucilene Claudiane', desc: 'Sabor um pouco amargo.', rating: 3),
        Comentario(nome: 'Wagner Botelho', desc: 'O preço não favorece.', rating: 2),
        Comentario(nome: 'Barbara Vitória', desc: 'O sabor é simplesmente MARCANTE.', rating: 5),
        Comentario(nome: 'Wellington dos Prazeres', desc: 'O toque de uva na geleia...recomendo muito.', rating: 2),
      ],
    ),
    Produtos(
      nome: 'Geleia de Framboesa',
      valor: 'R\$28.00',
      foto: 'assets/img/doces/Geleia_de_framboesa.png',
      desc: 'Descrição longa',
      comentarios: [
        Comentario(nome: 'Matheus Militão', desc: 'Quando comprei, não sabia que ia gostar tanto!', rating: 4),
        Comentario(nome: 'João Lucas Santos', desc: 'Muito bom.', rating: 5),
        Comentario(nome: 'Enzo Guilherme', desc: 'É exatamente disso que eu precisava!', rating: 5),
        Comentario(nome: 'Maria Cristina', desc: 'Eu gostei, mas no fundo, esperava mais.', rating: 3),
        Comentario(nome: 'Daniel Biondi', desc: 'Nada contra o produto, mas não gosto de framboesa', rating: 2),
        Comentario(nome: 'Rute Silva', desc: 'Fiquei sem palavras, essa geleia combina com tudo.', rating: 5),
      ],
    ),
    Produtos(
      nome: 'Geleia de Laranja',
      valor: 'R\$18.00',
      foto: 'assets/img/doces/Geleia_de_laranja.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Selma Costa', desc: 'Muito boa para um café da manhã equilibrado.', rating: 5),
        Comentario(nome: 'Junior Lima', desc: 'Gosto muito de geleia, ainda mais se for de laranja!', rating: 5),
        Comentario(nome: 'Enzo Guilherme', desc: 'Simplesmente o melhor sabor que provei.', rating: 4),
        Comentario(nome: 'Nilson Queiroz', desc: 'Não sei...falta alguma coisa.', rating: 2),
        Comentario(nome: 'Renan Mendes', desc: 'Curti o design do produto.', rating: 3),
        Comentario(nome: 'Maria José', desc: 'Demorou pra chegar.', rating: 2),
      ],
    ),
    Produtos(
      nome: 'Geleia de Limão',
      valor: 'R\$18.00',
      foto: 'assets/img/doces/Geleia_de_limao.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Maria Aparecida', desc: 'Tudo de limão fica bom.', rating: 4),
        Comentario(nome: 'Matheus Gama', desc: 'É impressionante como essa marca não erra em nenhum produto!', rating: 5),
        Comentario(nome: 'José Vinicius', desc: 'Trouxe mais alegria para minhas refeições', rating: 5),
        Comentario(nome: 'Carlos Miguel', desc: 'O preço não é favorável.', rating: 2),
        Comentario(nome: 'Olívia Clementino', desc: 'Comendo todo dia acaba rápido.', rating: 3),
        Comentario(nome: 'Claudionor Madeira', desc: 'Achei azedo.', rating: 1),
      ],
    ),
    Produtos(
      nome: 'Geleia de Morango',
      valor: 'R\$18.00',
      foto: 'assets/img/doces/Geleia_de_morango.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Anthony Oliveira', desc: 'A melhor geleia que provei na vida, real oficial.', rating: 5),
        Comentario(nome: 'Carla Souza', desc: 'Me surpreendi com o gosto único do morango.', rating: 4),
        Comentario(nome: 'Jéssica Cena', desc: 'Super compraria mais!', rating: 4),
        Comentario(nome: 'Josimar Solange', desc: 'Na minha opinião, podia ter em embalagens maiores.', rating: 2),
        Comentario(nome: 'Matheus Kevin', desc: 'A geleia aproveitou bem o sabor do morango.', rating: 4),
        Comentario(nome: 'Giroldo Ferreira', desc: 'Sem críticas ou elogios.', rating: 3),
      ],
    ),
    Produtos(
      nome: 'Geleia de Maracujá',
      valor: 'R\$18.00',
      foto: 'assets/img/doces/Geleia_de_maracuja.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Ana Clara', desc: 'Incrivelmente Incrível.', rating: 5),
        Comentario(nome: 'Laura Helena', desc: 'Comprei para minha vó e ela não para de elogiar!.', rating: 3),
        Comentario(nome: 'Edson Silva', desc: 'Vou comprar mais vezes, a família toda gostou.', rating: 5),
        Comentario(nome: 'Regiane Fogaça', desc: 'Excelente produto.', rating: 4),
        Comentario(nome: 'Ravi Fernandes', desc: 'O gosto é bom, só não curti muito a consistência.', rating: 3),
        Comentario(nome: 'Renan Mitsuru', desc: 'Está dentro do esperado.', rating: 3),
      ],
    ),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) { //Função realizada ao clicar em qualquer item da bottomNavigationBar
    setState(() {
      _selectedIndex = index;
    });

    Widget destination; //Criando a variável
    switch (index) {
      case 0:
        destination = Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => TelaCadastro()),
        ) as Widget; //Simulando uma ação de "sair" da seção
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
      title: 'Doces | Page',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Image.asset(
                'assets/img/docesPage.png', // Imagem de fundo
                fit: BoxFit.cover, // Utiliza 100% da imagem
                width: double.infinity, // Preenche toda a largura
                height: 380.0, // Altura da imagem
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
                onTap: () { // Ao clicar, aciona a função dentro do Navigator
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PesquisaApp()),
                  );
                },
                child: const Align(
                  alignment: Alignment.centerRight, // Alinha o texto à direita
                  child: Padding(
                    padding: EdgeInsets.all(12.0), // Adicionando margem ao ícone apenas para cima e esquerda
                    child: MouseRegion( // Tornando clicável
                      cursor: SystemMouseCursors.click, // Define o cursor de clique
                        child: Icon(
                          Icons.search, // ícone de pesquisa
                          size: 30.0, // Tamanho do ícone
                        color: Color.fromARGB(255, 255, 255, 255), // Cor do ícone
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
                      'Doces', // \n é quebra de linha
                      style: TextStyle( // Comando utilizado para estilizar o texto
                        fontSize: 50.0, // Definindo o tamanho da fonte
                        fontWeight: FontWeight.bold, // Definindo o estilo da fonte (itálico, negrito, etc)
                        fontFamily: 'RedHatDisplay', // Fonte estilizada
                        color: Colors.white, // Definindo a cor do texto
                        height: 1.4, // Definindo a altura, que servirá como espaçamento de uma linha a outra
                      ),
                    ),
                  ],
                ),
              ),

              // Lista de produtos
              Padding(
                padding: const EdgeInsets.only(top:140.0, bottom: 15.0), // Define espaçamento de cima e de baixo
                child: Center( // Centraliza os filhos
                  child: Wrap( // Organiza os elementos filhos em linhas ou colunas flexíveis
                    spacing: 10.0, // Espaçamento horizontal entre um elemento e outro
                    runSpacing: 10.0, // Espaçamento vertical entre um elemento e outro
                    alignment: WrapAlignment.center, // Alinhando no centro tudo, dentro do espaço disponível
                    children: produtos.map((produto) { // Mapeia a lista de produtos para widgets
                      return GestureDetector( // Detecta interações do usuário
                        onTap: () { // Executa ao ser clicado
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InfoProduto(), // Tela de destino
                              settings: RouteSettings(arguments: produto), // Envia as informações para a tela de destino
                            ),
                          );
                        },
                        child: Card(
                          color: const Color(0xFFD9D9D9), // Cor do card
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0), // Arredondando as bordas do card
                          ),
                          elevation: 5, // Adiciona sombra ao card
                          margin: const EdgeInsets.all(10.0), // Margem para todas as direções
                          child: SizedBox(
                            width: 200.0, // Largura do card
                            height: 230.0, // Altura do card
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center, // Alinhando todos os filhos no centro do card 
                              children: [
                                CircleAvatar( // Torna a imagem redonda
                                  radius: 70.0, // Arredondando foto do produto
                                  backgroundImage: AssetImage(produto.foto), // Resgatando foto do produto da classe Produto
                                ),
                                const SizedBox(height: 18.0), // Espaçamento entre foto e nome do produto
                                Text(
                                  produto.nome, // Nome do produto sendo resgatado da classe Produto
                                  style: const TextStyle(
                                    fontSize: 18.0, // Tamanho do nome do produto
                                    fontWeight: FontWeight.bold, // Estilo da fonte
                                    fontFamily: 'RedHatDisplay', // Fonte estilizada
                                    color: Color(0XFF353535), // Cor do nome do produto
                                  ),
                                ),
                                Text(
                                  produto.valor, // Valor sendo resgatado da classe Produto 
                                  style: const TextStyle(
                                    fontSize: 16.0, // Tamanho do preço
                                    fontFamily: 'RedHatDisplay', // Fonte estilizada
                                    color: Color(0XFF353535), // Cor do preço
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }).toList(), // Converte a lista de produtos em uma lista de Widgets
                  ),
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
              backgroundColor: const Color(0XFFE9E9E8), // Cor do fundo
              onTap: _onItemTapped, // Função acionada ao clicar
              showSelectedLabels: false, // Evita que a label apareça quando selecionado
              showUnselectedLabels: false, // Evita que a label apareça quando deselecionado
            ),
          ),
        ),
      ),
    );
  }
}
