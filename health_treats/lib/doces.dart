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

   final List<Produtos> produtos = [ // Lista dos produtos

    Produtos(
      nome: 'Cacau com Amêndoas',
      valor: 'R\$13,00',
      foto: 'assets/img/doces/chocolate _de_cacau_com_amendoas.png',
      desc: 'O Chocolate com Amêndoas é uma opção deliciosa e saudável, adoçado com eritritol, um adoçante natural que não eleva os níveis de glicose no sangue. Feito com cacau de alta qualidade, combina o sabor intenso do chocolate com o crocante e nutritivo das amêndoas, oferecendo uma experiência saborosa e rica em nutrientes. Livre de açúcar refinado, lactose, glúten e conservantes artificiais, é perfeito para diabéticos ou para quem busca uma alternativa equilibrada, sem abrir mão do prazer de um chocolate com amêndoas sofisticado e saudável.',
      comentarios: [
        Comentario(nome: 'Reginaldo Garcia', desc: 'O gosto das nozes estava incrível', rating: 5),
        Comentario(nome: 'Erika Spazzapan', desc: 'A textura do produto agradou-me.', rating: 5),
        Comentario(nome: 'Márcio de Sá', desc: 'Atendeu as minhas expectativas.', rating: 5),
        Comentario(nome: 'Héctor Satiro', desc: 'Gostei, mas o sabor da amêndoa é fraco', rating: 3),
        Comentario(nome: 'Evellyn Paixão', desc: 'Gostei da qualidade, entretanto, o produto chegou amassado', rating: 4),
        Comentario(nome: 'Julio Cariani', desc: 'Péssimo para quem faz academia', rating: 1),
      ],
    ), 
    Produtos(
      nome: 'Chocolate com Frutas',
      valor: 'R\$13,00',
      foto: 'assets/img/doces/chocolate_de_cacau_com_frutas_vermelhas.png',
      desc: 'O Chocolate com Frutas Vermelhas é uma opção deliciosa e saudável, adoçado com eritritol, um adoçante natural que não eleva os níveis de glicose no sangue. Feito com cacau de alta qualidade, oferece o sabor intenso do chocolate, combinado com o frescor e a acidez das frutas vermelhas, como morango, framboesa e amora. Livre de açúcar refinado, lactose, glúten e conservantes artificiais, é perfeito para diabéticos ou para quem busca uma alternativa equilibrada, sem abrir mão de um sabor sofisticado e frutado. Ideal para quem deseja um doce saboroso e saudável.',
      comentarios: [
        Comentario(nome: 'Clayson Carillo', desc: 'Saboroso e marcante. O produto dos sonhos!', rating: 5),
        Comentario(nome: 'Adriel Russi', desc: 'O toque cítrico o levou a perfeição!', rating: 5),
        Comentario(nome: 'Willian Garnacho', desc: 'Sabor intrigante e peculiar.', rating: 4),
        Comentario(nome: 'George Barreto', desc: 'Combinação razoável! Os elementos não combinam.', rating: 3),
        Comentario(nome: 'Joaquina de Lurdes', desc: 'Muito interessante.', rating: 4),
        Comentario(nome: 'Sueli Voltanelli', desc: 'Não sei o porque estão elogiando, péssimo produto.', rating: 1),
      ],
    ),  
    Produtos(
      nome: 'Chocolate Branco',
      valor: 'R\$13,00',
      foto: 'assets/img/doces/chocolate_de_chocolate_branco_com_coco.png',
      desc: 'O Chocolate Branco é uma opção deliciosa e saudável, adoçado com eritritol, um adoçante natural que não eleva os níveis de glicose no sangue. Feito com manteiga de cacau de alta qualidade, ele oferece a cremosidade característica do chocolate branco, sem adição de açúcar refinado. Livre de lactose, glúten e conservantes artificiais, é perfeito para diabéticos ou para quem busca uma alternativa equilibrada, sem abrir mão do sabor doce e suave do chocolate branco. Ideal para quem deseja um doce saboroso e saudável',
      comentarios: [
        Comentario(nome: 'Philippe Vincenzzo', desc: 'Como dizem na minha terra natal: magnífico', rating: 4),
        Comentario(nome: 'Juan Fernandes Dias', desc: 'Como amante de chocolate, amei esse sabor.', rating: 5),
        Comentario(nome: 'Andressa Barrosa', desc: 'Levei para o trabalho e todes adoraram.', rating: 5),
        Comentario(nome: 'Agamenon Romeu', desc: 'O produto veio fora da validade, nem pude provar!', rating: 1),
        Comentario(nome: 'Cristina Figueiredo', desc: 'O sabor do coco roubou a cena!', rating: 4),
        Comentario(nome: 'Guilhermy Sarjani', desc: 'Ideal para comer como sobremesa.', rating: 5),
      ],
    ),    
    Produtos(
      nome: 'Geleia de Uva',
      valor: 'R\$28,00',
      foto: 'assets/img/doces/Geleia_de_uva.png',
      desc: 'A Geleia de Uva é feita com uvas frescas (50%) e adoçada com eritritol, um adoçante natural sem calorias e de baixo índice glicêmico, ideal para diabéticos. Contém pectina para dar a consistência e suco de limão para equilibrar o sabor. Sem açúcar refinado, glúten, lactose ou conservantes artificiais, oferece uma opção saudável e saborosa para quem controla a ingestão de açúcar.',
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
      valor: 'R\$28,00',
      foto: 'assets/img/doces/Geleia_de_framboesa.png',
      desc: 'A Geleia de Framboesa é feita com framboesas frescas (50%) e adoçada com eritritol, um adoçante natural sem calorias e de baixo índice glicêmico, ideal para diabéticos. Contém pectina para dar a consistência e suco de limão para equilibrar o sabor. Sem açúcar refinado, glúten, lactose ou conservantes artificiais, oferece uma opção saudável e saborosa para quem controla a ingestão de açúcar.',
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
      valor: 'R\$28,00',
      foto: 'assets/img/doces/Geleia_de_laranja.png',
      desc: 'A Geleia de Laranja é feita com laranjas frescas (50%) e adoçada com eritritol, um adoçante natural sem calorias e de baixo índice glicêmico, ideal para diabéticos. Contém pectina para dar a consistência e suco de limão para equilibrar o sabor. Sem açúcar refinado, glúten, lactose ou conservantes artificiais, oferece uma opção saudável e saborosa para quem controla a ingestão de açúcar.',
      comentarios: [
        Comentario(nome: 'Selma Costa', desc: 'Muito boa para um café da manhã equilibrado.', rating: 5),
        Comentario(nome: 'Junior Lima', desc: 'Gosto muito de geleia, ainda mais se for de laranja!', rating: 5),
        Comentario(nome: 'Enzo Miguel Arantes', desc: 'Simplesmente o melhor sabor que provei.', rating: 4),
        Comentario(nome: 'Nilson Queiroz', desc: 'Não sei...falta alguma coisa.', rating: 2),
        Comentario(nome: 'Renan Mendes', desc: 'Curti o design do produto.', rating: 3),
        Comentario(nome: 'Maria José Tomé', desc: 'Demorou pra chegar.', rating: 2),
      ],
    ),
    Produtos(
      nome: 'Geleia de Limão',
      valor: 'R\$28,00',
      foto: 'assets/img/doces/Geleia_de_limao.png',
      desc: 'A Geleia de Limão é feita com limões frescos (50%) e adoçada com eritritol, um adoçante natural sem calorias e de baixo índice glicêmico, ideal para diabéticos. Contém pectina para dar a consistência e suco de limão para equilibrar o sabor. Sem açúcar refinado, glúten, lactose ou conservantes artificiais, oferece uma opção saudável e saborosa para quem controla a ingestão de açúcar.',
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
      valor: 'R\$28,00',
      foto: 'assets/img/doces/Geleia_de_morango.png',
      desc: 'A geleia de morango é feita com morangos frescos (50%) e adoçada com eritritol, um adoçante natural sem calorias e de baixo índice glicêmico, ideal para diabéticos. Contém pectina para dar a consistência e suco de limão para equilibrar o sabor. Sem açúcar refinado, glúten, lactose ou conservantes artificiais, oferece uma opção saudável e saborosa para quem controla a ingestão de açúcar.',
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
      valor: 'R\$28,00',
      foto: 'assets/img/doces/Geleia_de_maracuja.png',
      desc: 'A Geleia de Maracujá é feita com maracujás frescos (50%) e adoçada com eritritol, um adoçante natural sem calorias e de baixo índice glicêmico, ideal para diabéticos. Contém pectina para dar a consistência e suco de limão para equilibrar o sabor. Sem açúcar refinado, glúten, lactose ou conservantes artificiais, oferece uma opção saudável e saborosa para quem controla a ingestão de açúcar.',
      comentarios: [
        Comentario(nome: 'Ana Clara', desc: 'Incrivelmente Incrível.', rating: 5),
        Comentario(nome: 'Laura Helena', desc: 'Comprei para minha vó e ela não para de elogiar!.', rating: 3),
        Comentario(nome: 'Edson Silva', desc: 'Vou comprar mais vezes, a família toda gostou.', rating: 5),
        Comentario(nome: 'Regiane Fogaça', desc: 'Excelente produto.', rating: 4),
        Comentario(nome: 'Ravi Fernandes', desc: 'O gosto é bom, só não curti muito a consistência.', rating: 3),
        Comentario(nome: 'Renan Mitsuru', desc: 'Está dentro do esperado.', rating: 3),
      ],
    ),
    Produtos(
      nome: 'Coockie de Uva',
      valor: 'R\$7,00',
      foto: 'assets/img/doces/cookie_de_uva.png',
      desc: 'O Cookie de Uva é uma opção deliciosa e saudável, feito com uvas desidratadas e adoçado com eritritol, um adoçante natural que não eleva os níveis de glicose no sangue. Preparado com farinha integral ou sem glúten, o cookie oferece uma textura crocante e um sabor suave, com pedaços de uva que adicionam frescor. Sem açúcar refinado, lactose, glúten ou conservantes artificiais, é uma alternativa perfeita para diabéticos ou para quem busca um lanche saboroso e equilibrado.',
      comentarios: [
        Comentario(nome: 'Whindersson Gouveia', desc: 'A criançada daqui de casa amou.', rating: 5),
        Comentario(nome: 'Jailson Leite', desc: 'O produto foi entregue no prazo!', rating: 5),
        Comentario(nome: 'Rosimeire Domingues', desc: 'O gosto da uva não estava tão forte, mas ainda assim eu gostei muito.', rating: 4),
        Comentario(nome: 'Josilma Soares', desc: 'Possui potencial para melhorar.', rating: 3),
        Comentario(nome: 'Wilson Aquino Diniz', desc: 'O produto chegou dias após o prazo.', rating: 2),
        Comentario(nome: 'Betânia Jorgeana', desc: 'Esse produto me traz problemas estomacais. Não comprem!', rating: 1),
      ],
    ), 
    Produtos(
      nome: 'Coockie de Cereja',
      valor: 'R\$7,00',
      foto: 'assets/img/doces/cookie_de_cereja.png',
      desc: 'O Cookie de Cereja é uma opção deliciosa e saudável, feito com cerejas desidratadas e adoçado com eritritol, um adoçante natural que não eleva os níveis de glicose no sangue. Preparado com farinha integral ou sem glúten, o cookie possui uma textura crocante e um sabor doce e frutado, com pedaços de cereja que adicionam um toque de frescor. Sem açúcar refinado, lactose, glúten ou conservantes artificiais, é ideal para diabéticos ou para quem busca um lanche saboroso e equilibrado.',
      comentarios: [
        Comentario(nome: 'Rosita de Alencar', desc: 'O gosto de cereja trouxe a sensação do natal. Adorei!', rating: 5),
        Comentario(nome: 'Audálio Dantas', desc: 'O produto tem uma textura estranha, mas um gosto muito bom!', rating: 4),
        Comentario(nome: 'Dora Oliveira', desc: 'Sabor aceitável.', rating: 3),
        Comentario(nome: 'Pedro Amado', desc: 'O produto me causou enjoo.', rating: 2),
        Comentario(nome: 'Matheus Secco', desc: 'Utilizei como ingrediente nos meus doces, a família adorou!', rating: 5),
        Comentario(nome: 'Weliington Cabello', desc: 'A empresa não me enviou o produto!!', rating: 1),
      ],
    ),  
    Produtos(
      nome: 'Coockie de Baunilha',
      valor: 'R\$7,00',
      foto: 'assets/img/doces/cookie_de_baunilha.png',
      desc: 'O Cookie de Baunilha é uma opção deliciosa e saudável, adoçado com eritritol, um adoçante natural que não afeta os níveis de glicose no sangue. Feito com farinha integral ou sem glúten, o cookie apresenta uma textura crocante e o delicioso sabor suave de baunilha. Livre de açúcar refinado, lactose, glúten e conservantes artificiais, é perfeito para diabéticos ou para quem busca um lanche equilibrado, sem abrir mão do sabor.',
      comentarios: [
        Comentario(nome: 'Nivia Furtado', desc: 'O sabor de baunilha estava aceitável.', rating: 4),
        Comentario(nome: 'Ivonete de Naziazeno', desc: 'A baunilha caiu como uma pluma nesse cookie.', rating: 5),
        Comentario(nome: 'Olga Presidente', desc: 'Fiquei nas nuvens após comer esse produto.', rating: 5),
        Comentario(nome: 'Fábian Ruiz', desc: 'Esse produto causou alergia nas minhhas filhas!.', rating: 1),
        Comentario(nome: 'Alexandre Carrara', desc: 'O produto é muito pequeno, mas o sabor é maravilhoso!.', rating: 4),
        Comentario(nome: 'Estefânia Agostinho', desc: 'Tão saboroso que até fiquei sem comentários.', rating: 5),
      ],
    ),
    Produtos(
      nome: 'Coockie de Blueberry',
      valor: 'R\$7,00',
      foto: 'assets/img/doces/cookie_de_blueberry.png',
      desc: 'O Cookie de Blueberry é uma opção deliciosa e saudável, feito com mirtilos desidratados e adoçado com eritritol, um adoçante natural que não eleva os níveis de glicose no sangue. Preparado com farinha integral ou sem glúten, o cookie oferece uma textura crocante e um sabor doce e frutado, com pedaços de blueberry que adicionam frescor. Sem açúcar refinado, lactose, glúten ou conservantes artificiais, é ideal para diabéticos ou para quem busca um lanche equilibrado e saboroso.',
      comentarios: [
        Comentario(nome: 'Marcos Vieira', desc: 'Fiquei embasbacado com tamanha saborosidade!', rating: 5),
        Comentario(nome: 'Jorlan Barros', desc: 'Sabor maravilhosamente incrível!', rating: 5),
        Comentario(nome: 'Sheila Braz', desc: 'O gosto não é tão atrativo.', rating: 3),
        Comentario(nome: 'Ruan da Rocha', desc: 'Dinheiro jogado fora.', rating: 1),
        Comentario(nome: 'Júnior de Amaral', desc: 'Blueberry? Não deu nem para sentir o gosto.', rating: 2),
        Comentario(nome: 'Giovanne Militão', desc: 'Não entendo os comentários negativos. Produto maravilhoso.', rating: 5),
      ],
    ),
    Produtos(
      nome: 'Coockie Branco',
      valor: 'R\$7,00',
      foto: 'assets/img/doces/cookie_de_chocolate_branco.png',
      desc: 'O Cookie de Chocolate Branco diet é uma opção deliciosa e saudável, adoçado com eritritol, um adoçante natural que não eleva os níveis de glicose no sangue. Feito com farinha integral ou sem glúten, o cookie possui uma textura crocante e o sabor doce e cremoso do chocolate branco, sem comprometer a saúde. Livre de açúcar refinado, lactose, glúten e conservantes artificiais, é uma alternativa perfeita para diabéticos ou para quem busca um lanche saboroso e equilibrado.',
      comentarios: [
        Comentario(nome: 'Thaís Magalhães', desc: '#adoravel', rating: 4),
        Comentario(nome: 'Millenna Lira', desc: 'Melhor tipo de sabor na face da terra!', rating: 5),
        Comentario(nome: 'Óscar Reymond', desc: 'Esperava mais.', rating: 3),
        Comentario(nome: 'Bruna Pompeo Lima', desc: 'Chegou no prazo.', rating: 3),
        Comentario(nome: 'Wendell de Castro', desc: 'Saboroso, mas não saciou minha fome.', rating: 4),
        Comentario(nome: 'Amanda Marquezine', desc: 'Péssimo e horrível.', rating: 1),
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
      title: 'Doces | Page', // título do aplicativo ao ser emulado
      home: Scaffold( // Corpo do aplicativo
        body: SingleChildScrollView( // Scroll de tela
          child: Stack(
            children: <Widget>[ // Permite a construção de vários widgets
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
                        child: Card( // Card dos produtos
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
