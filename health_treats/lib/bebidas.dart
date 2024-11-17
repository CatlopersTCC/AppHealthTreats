import 'package:flutter/material.dart';
import 'package:health_treats/cadastro.dart';
import 'package:health_treats/menu.dart';
import 'package:health_treats/pesquisa.dart';
import 'package:health_treats/sobre.dart';
import 'package:health_treats/infoProdutos.dart';
import 'package:health_treats/produtos.dart';

class Bebidas extends StatefulWidget {
  const Bebidas({super.key});
  
  @override
  _BebidasState createState() => _BebidasState();
}

// Classe que contém todo o conteúdo a ser exibido na tela
class _BebidasState extends State<Bebidas> {

   final List<Produtos> produtos = [

    Produtos(
      nome: 'Café Natural',
      valor: 'R\$14.50',
      foto: 'assets/img/bebidas/cafe.png',
      desc: 'Descrição rápida',
      comentarios: [
        Comentario(nome: 'Suelen Garcia', desc: 'O gostinho espeicial me ganhou!', rating: 4),
        Comentario(nome: 'Jefferson Douglas', desc:  'Repleto de cafeína, acorda bem pela manhã', rating: 4),
        Comentario(nome: 'Carolina Parra', desc: 'O melhor café que já provei!', rating: 5),
        Comentario(nome: 'Shirley Gouveia', desc: 'Senti que o café é fraco, mas ainda sim têm qualidade.', rating: 3),
        Comentario(nome: 'Roberto Ferraz', desc: 'Superou qualquer outra marca.', rating: 5),
        Comentario(nome: 'Pedro Pequini', desc: 'Amarga bastante.', rating: 2),
      ],
    ),
    Produtos(
      nome: 'Chá de Canela',
      valor: 'R\$4.50',
      foto: 'assets/img/bebidas/cha_de_canela_e_hibisco.png',
      desc: 'Descrição longa',
      comentarios: [
        Comentario(nome: 'Adiel Lopes', desc: 'Adorei esse sabor tão inovador no mercado.', rating: 4),
        Comentario(nome: 'Giovane Severino', desc: 'Canela combina com tudo, impressionante.', rating: 4),
        Comentario(nome: 'Isabela Zambrosio', desc: 'Harmoniso e diferente de tudo que já provei.', rating: 4),
        Comentario(nome: 'Lucas Barros', desc: 'Para chá, essa combinação ficou ruim.', rating: 2),
        Comentario(nome: 'Levi Amaral', desc: 'O sabor intenso da canela não ficou legal.', rating: 1),
        Comentario(nome: 'Flávia Muniz', desc: 'Aqui em casa virou febre!', rating: 5),
      ],
    ),
    Produtos(
      nome: 'Chá de Laranja',
      valor: 'R\$4.00',
      foto: 'assets/img/bebidas/cha_de_laranja.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Gilma Neilma', desc: 'Dentre todos os sabores de chá, o de laranja é o mais relaxante...', rating: 4),
        Comentario(nome: 'Laércio Mendes', desc: 'Faz muito tempo que não via algo tão bom!', rating: 5),
        Comentario(nome: 'João Mitsuru', desc: 'Laranja + Chá = Perfeição.', rating: 5),
        Comentario(nome: 'Gustavo Sobrinho', desc: 'A acidez matou o sabor.', rating: 2),
        Comentario(nome: 'Aline Barros', desc: 'A laranja calhou bem no chá.', rating: 4),
        Comentario(nome: 'Lucas Rocha', desc: 'Faltou ter mais o sabor cítrico.', rating: 1),
      ],
    ),
    Produtos(
      nome: 'Chá de Limão',
      valor: 'R\$4.00',
      foto: 'assets/img/bebidas/cha_de_limao.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Carla Botelho', desc: 'Tudo que possua limão na composição, me conquista!', rating: 5),
        Comentario(nome: 'Zico Santos Freire', desc: 'Têm me auxiliado a controlar a glicemia.', rating: 4),
        Comentario(nome: 'Matheus Militão', desc: 'O design me chamou muita atenção, e o sabor também.', rating: 4),
        Comentario(nome: 'Thiago Oliveira', desc: 'É mais azedo do que eu esperava.', rating: 1),
        Comentario(nome: 'Laura Cristine', desc: 'Outros sabore de chá são melhores, não desmerecendo esse.', rating: 3),
        Comentario(nome: 'Danilo Barbosa', desc: 'Muito bom, nada a reclamar!', rating: 5),
      ],
    ),
    Produtos(
      nome: 'Chá de Morango',
      valor: 'R\$4.00',
      foto: 'assets/img/bebidas/cha_de_morango.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Marcela de Oliveira', desc: 'Já virou rotina fazer um chá de morango pra relaxar.', rating: 5),
        Comentario(nome: 'Michelly Moreno', desc: 'Primeira vez que vejo um chá sabor morango.', rating: 4),
        Comentario(nome: 'Osório de Jesus', desc: 'Diferente e sensacional!', rating: 4),
        Comentario(nome: 'Otávio Otamendi', desc: 'Só colocar na água quente que a mágica acontece.', rating: 5),
        Comentario(nome: 'Jonas Santana', desc: 'Para quem gosta de morango, é uma excelente opção!', rating: 4),
        Comentario(nome: 'Severina Maria', desc: 'Morango para chá não fica nada bom...', rating: 1),
      ],
    ),
    Produtos(
      nome: 'Chá de Gengibre',
      valor: 'R\$5.00',
      foto: 'assets/img/bebidas/cha_de_limao_e_gengibre.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Ana Carolina', desc: 'Simplesmente um sabor único.', rating: 4),
        Comentario(nome: 'Fernando Moura', desc: 'O equilíbrio do limão com o gengibre deixa tudo melhor.', rating: 4),
        Comentario(nome: 'Rogério Vitor', desc: 'Até a criançada amou esse chá.', rating: 5),
        Comentario(nome: 'Vânia Limeira', desc: 'O gosto não é nada de outro mundo.', rating: 3),
        Comentario(nome: 'Matheus Peixinho', desc: 'Bom para auxiliar contra gripes, mas o sabor...', rating: 3),
        Comentario(nome: 'Angélica Sofia', desc: 'Provei, mas não compraria outras vezes', rating: 3),
      ],
    ),
    Produtos(
      nome: 'Chá de Maracujá',
      valor: 'R\$4.50',
      foto: 'assets/img/bebidas/cha_de_maracuja.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Paulo Fernando', desc: 'Ótimo para relaxar um pouco depois do trabalho.', rating: 5),
        Comentario(nome: 'Sérgio Domingos', desc: 'Têm me ajudado a controlar a diabete comendo sem abdicar de bons alimentos.', rating: 5),
        Comentario(nome: 'Frederico Leite', desc: 'Prefiro os sabores mais tradicionais.', rating: 3),
        Comentario(nome: 'Bianca Sales', desc: 'O que mais me chamou a atenção para comprar foi o layout!', rating: 4),
        Comentario(nome: 'Tainá Preth', desc: 'Ficou com gosto de suco.', rating: 2),
        Comentario(nome: 'Alef Silvestre', desc: 'Maracujá acalma naturalmente, dentro de um chá então...', rating: 4),
      ],
    ),
    Produtos(
      nome: 'Chá Verde',
      valor: 'R\$5.00',
      foto: 'assets/img/bebidas/cha_verde_com_hortela.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Jeremias Augusto', desc: 'Incrivelmente Incrível.', rating: 5),
        Comentario(nome: 'Luís de Jesus', desc: 'Comprei e todos de casa não param de elogiar!.', rating: 4),
        Comentario(nome: 'Thomas dos Santos', desc: 'Vou comprar mais vezes, é uma bela opção de bebida.', rating: 4),
        Comentario(nome: 'Sarah Farias', desc: 'O hortelã não ornou no chá verde.', rating: 2),
        Comentario(nome: 'Leandro Palha', desc: 'O que fez perder nota foi a demora à chegar.', rating: 3),
        Comentario(nome: 'Sofia Medeiros', desc: 'A combinação ficou horrível...', rating: 1),
      ],
    ),
    Produtos(
      nome: 'Refri de Abacaxi',
      valor: 'R\$7.00',
      foto: 'assets/img/bebidas/refri_de_abacaxi_com_gengibre.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Camila Ricci Viana', desc: 'Apenas comprem, é tudo de bom!', rating: 5),
        Comentario(nome: 'Clayton Colombo', desc: 'Compensa comprar pelas propriedades que o gengibre possui.', rating: 5),
        Comentario(nome: 'Lara Azevedo', desc: 'Os amantes de combinações exóticas vão curtir!', rating: 4),
        Comentario(nome: 'Marcello Guedes', desc: 'O conceito é interessante, mas mas o sabor não é equilibrado.', rating: 3),
        Comentario(nome: 'Guilherme Castro', desc: 'Tirando a entrega, o produto é excelente.', rating: 3),
        Comentario(nome: 'Emily Greco', desc: 'Faltou o abacaxi ser mais intenso.', rating: 3),
      ],
    ),
    Produtos(
      nome: 'Refri de Blueberry',
      valor: 'R\$7.50',
      foto: 'assets/img/bebidas/refri_de_blueberry.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Jorge Cardoso Braga', desc: 'Entrou pra lista de refrigerantes favoritos!', rating: 5),
        Comentario(nome: 'Ester Guimarães', desc: 'Um dos melhores que já pude experimentar.', rating: 4),
        Comentario(nome: 'Fabiano Ribeiro', desc: 'Gostei bastante! É o típico sabor difícil de encontrar.', rating: 4),
        Comentario(nome: 'Igor Serra Alves', desc: 'Se destacasse ainda mais o sabor da fruta, ficaria perfeito.', rating: 3),
        Comentario(nome: 'Isadora Macedo', desc: 'Não é ruim, mas também não me conquistou.', rating: 3),
        Comentario(nome: 'Hortêncio Fontes', desc: 'Sabor artificial e enjoativo para mim.', rating: 1),
      ],
    ),
    Produtos(
      nome: 'Refri de Frutas',
      valor: 'R\$7.50',
      foto: 'assets/img/bebidas/refri_de_frutas_vermelhas.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Beatriz Bragança', desc: 'Nunca vi um produto de frutas vermelhas ser ruim, bom produto!.', rating: 5),
        Comentario(nome: 'Felipe Batista', desc: 'Estão muito de parabéns, ótimo alimento.', rating: 5),
        Comentario(nome: 'Dorival Magalhães', desc: 'Gostei, só achei o preço salgado.', rating: 3),
        Comentario(nome: 'Rebecca Assunção', desc: 'É bem refrescante e substitui facilmente qualquer refrigerante com açúcar!.', rating: 4),
        Comentario(nome: 'Maria da Conceição', desc: 'Na minha opinião, faltou um toque de maçã.', rating: 2),
        Comentario(nome: 'Helena Mattos', desc: 'Erraram feio nesse sabor...', rating: 1),
      ],
    ),
    Produtos(
      nome: 'Refri de Laranja',
      valor: 'R\$6.50',
      foto: 'assets/img/bebidas/refri_de_laranja.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Nayara Barbosa', desc: 'Delicioso e autêntico, compraria mais vezes com certeza.', rating: 5),
        Comentario(nome: 'Antônio Carvalho', desc: 'O frescor para dias ensolarados é sensacional.', rating: 4),
        Comentario(nome: 'Gerson Dias Freitas', desc: 'Perfeito! Sabor diferente mas maravilhoso.', rating: 5),
        Comentario(nome: 'Cláudia Machado', desc: 'Refrescante, mas o gosto deveria ser mais natural.', rating: 3),
        Comentario(nome: 'Gustavo Duarte', desc: 'Parece mais um xarope do que refrigerante.', rating: 1),
        Comentario(nome: 'Zico Marques Lopes', desc: 'Bebível, mas não tem nada que o destaque.', rating: 3),
      ],
    ),
    Produtos(
      nome: 'Refri de Limão',
      valor: 'R\$6.50',
      foto: 'assets/img/bebidas/refri_de_limao.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Renato Teixeira', desc: 'Impressionante como a marca faz até o simples ficar incrível!', rating: 5),
        Comentario(nome: 'Estephani Correia', desc: 'Fiquei CHOCADA com a qualidade.', rating: 4),
        Comentario(nome: 'Éder Leonardo Silva', desc: 'Em dias de verão, ter um refrigerante na mão é essencial.', rating: 5),
        Comentario(nome: 'Kauã de Andrade', desc: 'O mais refrescante que tomei da marca.', rating: 4),
        Comentario(nome: 'Vitória Campelo', desc: 'Me conquistou do primeiro gole ao último!', rating: 4),
        Comentario(nome: 'Rafaela Campos', desc: 'A acidez matou um pouco do gosto.', rating: 1),
      ],
    ),
    Produtos(
      nome: 'Refri de Kiwi',
      valor: 'R\$7.00',
      foto: 'assets/img/bebidas/refri_de_kiwi.png',
      desc: 'Descrição especial',
      comentarios: [
        Comentario(nome: 'Luiza Miranda', desc: 'Incrível como a marca é ousada e acerta!', rating: 5),
        Comentario(nome: 'Fábio Mendonça', desc: 'Até que bom, sem críticas e sem elogios.', rating: 3),
        Comentario(nome: 'Jurandir da Mota', desc: 'Dentre todos os refris do catálogo, achei o mais interessante.', rating: 4),
        Comentario(nome: 'Kauãne de Assis', desc: 'Esse sabor trouxe um ar bem fresco, até perdi a conta de quantos já tomei.', rating: 4),
        Comentario(nome: 'Simone Monteiro', desc: 'Kiwi para sabor de refrigerante...não dá.', rating: 1),
        Comentario(nome: 'Geovane dos Reis', desc: 'A combinação até que não ficou ruim, mas não foi o melhor refri que já provei.', rating: 3),
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
      title: 'Bebidas | Page',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Image.asset(
                'assets/img/bebidasPage.png', // Imagem de fundo
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
                      'Bebidas', // \n é quebra de linha
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
