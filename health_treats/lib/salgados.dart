import 'package:flutter/material.dart';
import 'package:health_treats/cadastro.dart';
import 'package:health_treats/menu.dart';
import 'package:health_treats/pesquisa.dart';
import 'package:health_treats/sobre.dart';
import 'package:health_treats/infoProdutos.dart';
import 'package:health_treats/produtos.dart';

class Salgados extends StatefulWidget {
  const Salgados({super.key});
  
  @override
  _SalgadosState createState() => _SalgadosState();
}

// Classe que contém todo o conteúdo a ser exibido na tela
class _SalgadosState extends State<Salgados> {

   final List<Produtos> produtos = [ // Lista de produtos

    Produtos(
      nome: 'Salgadinho de Tomate',
      valor: 'R\$6,00',
      foto: 'assets/img/salgados/salgadinho_de_tomate_e_manjericão.png',
      desc: 'Descrição rápida',
      comentarios: [
        Comentario(nome: 'David Battaglia', desc: 'Ta aí uma combinação que nunca imaginei que seria boa.', rating: 5),
        Comentario(nome: 'Herbert Clemente', desc: 'É um salgadinho exótico, claro que no bom sentido!', rating: 5),
        Comentario(nome: 'Aloísio Figueiredo', desc: 'Só a demora que fez perder nota, é de qualidade.', rating: 3),
        Comentario(nome: 'Maitê Ayla Ferreira', desc: 'Top mesmo, recomendo que experimentem.', rating: 4),
        Comentario(nome: 'Soraya Mantovani', desc: 'O manjericão estragou tudo!', rating: 1),
        Comentario(nome: 'Agnáldo Nepomuceno', desc: 'Possui um odor enjoativo...', rating: 2),
      ],
    ),
    Produtos(
      nome: 'Salgadinho Natural',
      valor: 'R\$6,00',
      foto: 'assets/img/salgados/salgadinho_natural.png',
      desc: 'Descrição longa',
      comentarios: [
        Comentario(nome: 'Ricardo Mesquita', desc: 'Se você busca um salgadinho bom e saudável, achou!', rating: 4),
        Comentario(nome: 'Helen Amaral Muniz', desc: 'O design me atraiu, mas o que me ganhou foi o sabor!', rating: 4),
        Comentario(nome: 'Alberto Camargo', desc: 'O sabor natural trás vida ao salgadinho.', rating: 5),
        Comentario(nome: 'Emanoel Xavier', desc: 'Ideal para festas, meus convidados amaram.', rating: 4),
        Comentario(nome: 'Yamilla Manella', desc: 'É bom, mas acredito que tenha faltado um pouco de sal.', rating: 3),
        Comentario(nome: 'Arthur Granolla', desc: 'Gostoso demais, comprei vários dessa linha para aproveitar.', rating: 5),
      ],
    ),
    Produtos(
      nome: 'Salgadinho de Queijo',
      valor: 'R\$6,00',
      foto: 'assets/img/salgados/salgadinho_de_queijo_e_cebola.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Melinda Gonçalves', desc: 'O sabor de queijo é simplesmente VICIANTE!', rating: 5),
        Comentario(nome: 'José Maria de Jesus', desc: 'Os amantes de queijo vão adorar!', rating: 5),
        Comentario(nome: 'Louise de Godoy', desc: 'Esse produto me surpreendeu em questão de qualidade.', rating: 5),
        Comentario(nome: 'Joana Fernandes', desc: 'Suja bastante a mão, mas tirando isso é bom.', rating: 3),
        Comentario(nome: 'Everaldo Nascimento', desc: 'O queijo ficou bom, mas o alho amarga o sabor no final.', rating: 2),
        Comentario(nome: 'Arnaldo Santana', desc: 'O único problema é o cheiro, fixa em todo lugar.', rating: 3),
      ],
    ),
    Produtos(
      nome: 'Salgadinho de Ervas',
      valor: 'R\$6,00',
      foto: 'assets/img/salgados/salgadinho_de_ervas_finas.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Alan Patrick Reis', desc: 'Excelente, diferente e bom.', rating: 5),
        Comentario(nome: 'Thiago Carvalho', desc: 'Ideal para acompanhar uma cerveja gelada!', rating: 5),
        Comentario(nome: 'Melissa Coutinho', desc: 'Ótimo para pesticar, bem leve', rating: 4),
        Comentario(nome: 'Yasmin Giménez', desc: 'O toque fresco é o charme.', rating: 4),
        Comentario(nome: 'Clarice Martin', desc: 'Perfeito para amantes do natural como eu!', rating: 5),
        Comentario(nome: 'André Bueno de Godoy', desc: 'Deixou a desejar nesse produto...', rating: 1),
      ],
    ),
    Produtos(
      nome: 'Salgadinho de Alho',
      valor: 'R\$6,00',
      foto: 'assets/img/salgados/salgadinho_de_alho_e_azeite.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Antonella Alencar', desc: 'Sensacional, acabou em segundos aqui em casa!', rating: 5),
        Comentario(nome: 'Cecília Gutierrez', desc: 'Delicioso! O alho e azeite são bem harmonizados.', rating: 4),
        Comentario(nome: 'Gustavo Medina', desc: 'Muito bom como aperitivo.', rating: 4),
        Comentario(nome: 'Aurora Diniz', desc: 'Essa combinação têm quem goste, mas eu não achei legal.', rating: 2),
        Comentario(nome: 'Sandro Brandão Penna', desc: 'Produto ok, prefiro outros da mesma linha.', rating: 3),
        Comentario(nome: 'Theodoro Espinosa', desc: 'O alho acabou matando o sabor do salgadinho.', rating: 2),
      ],
    ),
    Produtos(
      nome: 'Salgadinho de Limão',
      valor: 'R\$6,00',
      foto: 'assets/img/salgados/salgadinho_de_pimenta_e_limão.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Geraldo Cavalcante', desc: 'A pimenta é o equilíbrio de tudo, muito bom!', rating: 5),
        Comentario(nome: 'Valentina Thompson', desc: 'O salgadinho gourmet mais diferente que provei e não me decepcionou.', rating: 5),
        Comentario(nome: 'Manuela Mancini', desc: 'Adorei, ótimo para aperitivos de festa.', rating: 5),
        Comentario(nome: 'Jhonatan Alex Vieira', desc: 'O sabor do limão ficou intenso e da pimenta apagado.', rating: 3),
        Comentario(nome: 'Jemerson Albuquerque', desc: 'É bom, mas esperava que fosse mais apimentado.', rating: 3),
        Comentario(nome: 'Júlia Bittencourt', desc: 'A embalagem possui pouco conteúdo.', rating: 2),
      ],
    ),
    Produtos(
      nome: 'Bolacha Tradicional',
      valor: 'R\$6,00',
      foto: 'assets/img/salgados/bolacha_tradicional.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Douglas Regatto', desc: 'Para dividir com os amigos é ideal!', rating: 4),
        Comentario(nome: 'Pedro Alves Ventura', desc: 'A crocância basicamente é surreal...', rating: 5),
        Comentario(nome: 'Irenice Maria Ávila', desc: 'Adoro a marca, compro tudo para experimentar e não me decepciono.', rating: 5),
        Comentario(nome: 'Jamilly Guerra', desc: 'Se destaca pela crocância absurda.', rating: 5),
        Comentario(nome: 'Leonardo Natel', desc: 'Chegou em meu apartamento em migalhas, o transporte não foi bom.', rating: 1),
        Comentario(nome: 'Rosilda Cristina Ortiz', desc: 'Produto simples, mata a fome tranquilamente.', rating: 3),
      ],
    ),
    Produtos(
      nome: 'Bolacha de Requeijão',
      valor: 'R\$6,00',
      foto: 'assets/img/salgados/bolacha_de_requeijao.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Vitor Pereira Ortiz', desc: 'O requeijão encaixou perfeitamente nos biscoitos!', rating: 5),
        Comentario(nome: 'Milena da Cunha', desc: 'Chegou bem rapidinho, amei!', rating: 5),
        Comentario(nome: 'Vanessa Smith', desc: 'Achei comum, não me surpreendeu tanto.', rating: 3),
        Comentario(nome: 'Cristiano Miller', desc: 'A linha toda é boa, mas esse é meu favorito.', rating: 5),
        Comentario(nome: 'Moisés do Nascimento', desc: 'Só o preço que achei salgado.', rating: 2),
        Comentario(nome: 'Lucca de Pompeo', desc: 'Gosto de requeijão, mas em bolacha não pegou legal...', rating: 2),
      ],
    ),
    Produtos(
      nome: 'Bolacha de Manteiga',
      valor: 'R\$6,00',
      foto: 'assets/img/salgados/bolacha_de_manteiga.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Sílvio Granada', desc: 'Impressionante como a Health Treats inova!', rating: 5),
        Comentario(nome: 'Letícia Vasconcelos', desc: 'Esse é o tipo de produto simple e eficaz.', rating: 4),
        Comentario(nome: 'Clara Lobato Diniz', desc: 'Mata a fome como nenhum outro do mercado!', rating: 4),
        Comentario(nome: 'Vinícius Portioli', desc: 'Essa combinação têm quem goste, mas pra mim não ficou bom.', rating: 2),
        Comentario(nome: 'Alexandre Abravanel', desc: 'Bom, só tive alguns problemas com a demora para entregar.', rating: 3),
        Comentario(nome: 'Carol Monteiro', desc: 'O alho acabou matando o sabor do salgadinho.', rating: 2),
      ],
    ),
    Produtos(
      nome: 'Bolacha de Cebola',
      valor: 'R\$6,00',
      foto: 'assets/img/salgados/bolacha_de_cebola.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Fernanda Dias', desc: 'Me agradou em tudo, entrega, design e sabor!', rating: 5),
        Comentario(nome: 'Hortência Queirós', desc: 'Uma delícia, garanto que vão amar.', rating: 4),
        Comentario(nome: 'Neilton Prudente', desc: 'A Health Treats está de parabéns, excelente.', rating: 4),
        Comentario(nome: 'Jaqueline dos Santos', desc: 'Pelo preço compensa bem.', rating: 3),
        Comentario(nome: 'Diego Flamingo', desc: 'Perfeito para um piquenique no parque.', rating: 4),
        Comentario(nome: 'Ronaldo Limeira', desc: 'Talvez fosse melhor diminuir a itensidade da cebola, não gostei.', rating: 1),
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
      debugShowCheckedModeBanner: false, // Tira a bandeira de debug
      title: 'Salgados | Page', // Título ao ser emulado
      home: Scaffold( // Corpo do aplicativo
        body: SingleChildScrollView( // Scroll da tela
          child: Stack(
            children: <Widget>[ // Permite a construção de vários widgets
              Image.asset(
                'assets/img/salgadosPage.png', // Imagem de fundo
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
                      'Salgados', // \n é quebra de linha
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
