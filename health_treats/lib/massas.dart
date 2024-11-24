import 'package:flutter/material.dart';
import 'package:health_treats/cadastro.dart';
import 'package:health_treats/menu.dart';
import 'package:health_treats/pesquisa.dart';
import 'package:health_treats/sobre.dart';
import 'package:health_treats/infoProdutos.dart';
import 'package:health_treats/produtos.dart';

class Massas extends StatefulWidget {
  const Massas({super.key});
  
  @override
  _MassasState createState() => _MassasState();
}

// Classe que contém todo o conteúdo a ser exibido na tela
class _MassasState extends State<Massas> { // Lista de produtos

   final List<Produtos> produtos = [

    Produtos(
      nome: 'Mini Panquecas',
      valor: 'R\$10.00',
      foto: 'assets/img/massas/massas_panqueca.png',
      desc: 'Descrição rápida',
      comentarios: [
        Comentario(nome: 'Rosangela Gomes', desc: 'De todo o catálogo, as mini panquecas são o melhor!', rating: 5),
        Comentario(nome: 'Jeferson Araújo', desc: 'Gostei, o preço está ótimo também.', rating: 4),
        Comentario(nome: 'Gabriela Silva', desc: 'O triste é que acaba, pois são PERFEITAS!', rating: 5),
        Comentario(nome: 'Luís Henrique Soares', desc: 'Chegou até que rápido, recomendo.', rating: 4),
        Comentario(nome: 'Maria Lurdes Sousa', desc: 'Não gostei da consistência.', rating: 2),
        Comentario(nome: 'Edson Morais', desc: 'Produto de altíssima qualidade.', rating: 5),
      ],
    ),
    Produtos(
      nome: 'Mini Pães de Queijo',
      valor: 'R\$9.00',
      foto: 'assets/img/massas/massas_pao_de_queijo.png',
      desc: 'Descrição longa',
      comentarios: [
        Comentario(nome: 'Eloá Vasconcelos', desc: 'Superou todas as expectativas que eu tinha!', rating: 5),
        Comentario(nome: 'José Cruz Pereira', desc: 'Compraria mais.', rating: 4),
        Comentario(nome: 'Eduardo Damasceno', desc: 'Sensacional, não pode faltar no meu café da manhã', rating: 4),
        Comentario(nome: 'Silvana Franco', desc: 'Mini pães de queijo são TUDO de bom.', rating: 5),
        Comentario(nome: 'Iara Bohlant', desc: 'Não tenho nada contra o produto, mas sinto que faltou algo...', rating: 2),
        Comentario(nome: 'Paulo Ricardo', desc: 'Esperava que fossem maiores.', rating: 2),
      ],
    ),
    Produtos(
      nome: 'Mini Waffles',
      valor: 'R\$10.00',
      foto: 'assets/img/massas/massas_waffles.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Solimar Gomes Morais', desc: 'Nunca tinha visto algo parecido no Brasil, me surpreendeu.', rating: 5),
        Comentario(nome: 'Rosimeire França', desc: 'Ótimo complemento para um café da tarde.', rating: 4),
        Comentario(nome: 'Douglas Costa Júnior', desc: 'Todos os meus filhos amam.', rating: 4),
        Comentario(nome: 'Davi dos Anjos', desc: 'O gosto ficou é apagado.', rating: 1),
        Comentario(nome: 'Mariana Santiago', desc: 'Seria bom se tivessem embalagens maiores por ser um bom alimento.', rating: 3),
        Comentario(nome: 'Lúcia Maria', desc: 'Não gostei tanto deste sabor, prefiro os outros da mesma linha.', rating: 3),
      ],
    ),
    Produtos(
      nome: 'Mini Tortinhas',
      valor: 'R\$11.00',
      foto: 'assets/img/massas/massas_tortinhas.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Armando Batista', desc: 'Chegou bem rápido, gostei do atendimento e do produto.', rating: 5),
        Comentario(nome: 'Geralda Santana', desc: 'O difícil mesmo é parar de comer, qualidade pura!', rating: 5),
        Comentario(nome: 'Jackson Pereira Nunes', desc: 'Para lanches da tarde é maravilhoso!', rating: 4),
        Comentario(nome: 'Patrícia Motta', desc: 'Ideal para beliscar fazendo qualquer atividade, mas acaba rápido.', rating: 3),
        Comentario(nome: 'Elias Lopes Neves', desc: 'Prático pra comer, embalagem abre facilmente, curti.', rating: 4),
        Comentario(nome: 'Vanessa Ambrosio', desc: 'Não se tornou um dos meus favoritos, mas ainda sim é bom.', rating: 3),
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
      title: 'Massas | Page',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Image.asset(
                'assets/img/massasPage.png', // Imagem de fundo
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
                      'Massas', // \n é quebra de linha
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
                          color: const Color(0xFFF0EFEF), // Cor do card
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
              backgroundColor: const Color(0xFFF0EFEF), // Cor do fundo
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
