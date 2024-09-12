import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_treats/login.dart';
import 'package:health_treats/menu.dart';

class TelaCadastro extends StatelessWidget {
  const TelaCadastro({super.key});
  
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Treats || Cadastro', //Título que vai no app (quando emulado no navegador)
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column( //Cria uma coluna que receberá novos elementos
            crossAxisAlignment: CrossAxisAlignment.stretch, // Ocupa toda a largura da tela
            children: <Widget>[
              Stack( //Foi utilizado para possibilitar a sobreposição do texto sobre a imagem
                children: <Widget>[
                  Image.asset( //Comando que chama a imagem
                    'assets/img/Background.png', // Caminho da Imagem de fundo que ocupará determinado espaço
                    fit: BoxFit.cover, // Expande a imagem por todo espaço definido
                    width: double.infinity, // Utilizado para usar 100% do tamanho determinado
                    height: 430.0, // Define a altura da imagem
                  ),
                  const Positioned( // Comando utilizado para definir a posição de algum elemento (Nesse caso o elemento é um Text)
                    top: 40.0, // Define a distância do Text para a margem superior
                    left: 30.0, // Define a distância do Text para a margem esquerda
                    child: Column( // Criando uma coluna para alocar o Text
                      crossAxisAlignment: CrossAxisAlignment.start, // Alinha o texto à esquerda
                      children: <Widget>[
                        Text( // Criando o texto que irá se sobrepor a imagem
                          'Bem Vindo', // \n é quebra de linha
                          style: TextStyle( // Comando utilizado para estilizar o texto
                            fontSize: 50.0, // Definindo o tamanho da fonte
                            fontFamily: 'RedHatDisplay-Bold', // Definindo o estilo da fonte (itálico, negrito, etc)
                            color: Colors.white, // Definindo a cor do texto
                            height: 1.4, // Definindo a altura, que servirá como espaçamento de uma linha a outra
                          ), // Fim do TextStyle
                        ), // Fim do Text

                        Text( //Criando um novo texto que também irá se sobrepor a imagem de fundo
                          'Sign to continue', // Texto que será exibido
                          style: TextStyle( // Comando utilizado para estilizar o texto
                            fontSize: 30.0, // Definindo o tamanho da fonte
                            color: Colors.white, // Definindo a cor do texto
                            height: 0.9, // Definindo a altura, que, nesse caso, servirá de espaçamento de um Text ao outro
                          ), // Fim do TextStyle
                        ), // Fim do Text
                      ],
                    ), // Fim do comando da definição da coluna
                  ) // Fim do comando de determinação de posição
                ],
              ), // Fim do Stack
              const SizedBox(height: 15.0), // Comando utilizado para dar quebras de pixels na tela 

              const Center( // Comando utilizado para ditar que os elementos presentes dentro dele fiquem no centro
                child: Text( // Criando um elemento de texto
                  'Cadastro', // Texto a ser exibido na tela 
                  style: TextStyle( // Comando utilizado para estilizar o texto
                    fontSize: 30, // Definindo o tamanho da fonte
                    fontWeight: FontWeight.bold, // Definindo o estilo da fonte (itálico, negrito, etc)

                    // O comando abaixo foi utlizado para retirar um sublinhado de aviso
                    // ignore: use_full_hex_values_for_flutter_colors 
                    color: Color(0xff000000), // Definindo a cor do texto
                  ), // Fim do TextStyle
                ), // Fim do Text
              ), // Fim do Center

                Padding( // Comando utilizado para definir as distâncias de um elemento para a margem 
                padding: const EdgeInsets.all(30.0), // Definido a distância das margens laterais
                child: Column( // Criando uma coluna dentro do Padding
                  crossAxisAlignment: CrossAxisAlignment.start, // Alinha o texto à esquerda
                  children: <Widget>[ // Indica que widgets serão criados
                    const Text( // Criando o texto que irá acima de um TextFormField
                      'Nome de usuário', // Texto a ser exibido
                      style: TextStyle( // Comando utilizado para estilizar o texto
                        fontSize: 18.0, // Definindo o tamanho da fonte
                        fontWeight: FontWeight.bold, // Definindo o estilo da fonte (itálico, negrito, etc)

                        // O comando abaixo foi utlizado para retirar um sublinhado de aviso
                        // ignore: use_full_hex_values_for_flutter_colors
                        color: Color(0xff000000), // Definindo a cor do texto
                      ) // Fim do TextStyle
                    ), // Fim do Text

                    const SizedBox(height: 10.0), // Comando utilizado para dar quebras de pixels na tela 

                    TextFormField( // Comando utilizado para a criação de um campo de um formulário de Login
                      keyboardType: TextInputType.emailAddress, // Comando que define o tipo de entrada de dado no teclado (Email)
                      inputFormatters: <TextInputFormatter>[ // Formatando o que será recebido do teclado
                        FilteringTextInputFormatter.singleLineFormatter 
                      ],
                                            
                      decoration: InputDecoration( //Decoração da caixa de entrada de dados
                        labelText: 'Digite aqui', // Hint a ser exibido dentro da caixa de entrada de dados
                        labelStyle: const TextStyle(
                          // ignore: use_full_hex_values_for_flutter_colors
                          color: Color(0xff93B6EE),
                        ),
                         enabledBorder: const OutlineInputBorder( // Definido o estilo da borda da caixa de entrada de dados quando não focado
                            borderSide: BorderSide(color: Color(0xFF000000)), // Cor da borda quando não está focado
                          ),

                          focusedBorder: const OutlineInputBorder( // Definido o estilo da borda da caixa de entrada de dado quando focada

                            // O comando abaixo foi utlizado para retirar um sublinhado de aviso
                            // ignore: use_full_hex_values_for_flutter_colors
                            borderSide: BorderSide(color:  Color(0xff93B6EE)), // Cor da borda quando está focado
                          ),

                          border: OutlineInputBorder( // Estilizando a borda da caixa de entrada de dados em geral
                            borderRadius: BorderRadius.circular(30.0), // Arredondamento das bordas
                          ), // Fim da decoração da borda
                      ), // Fim da decoração do input
                    ), // Fim do forms
                    

                    const SizedBox(height: 20.0), // Comando utilizado para dar quebras de pixels na tela


                    const Text( // Criando o texto que irá acima de um TextFormField
                      'Email', // Texto a ser exibido
                      style: TextStyle( // Comando utilizado para estilizar o texto
                        fontSize: 18.0, // Definindo o tamanho da fonte
                        fontWeight: FontWeight.bold, // Definindo o estilo da fonte (itálico, negrito, etc)

                        // O comando abaixo foi utlizado para retirar um sublinhado de aviso
                        // ignore: use_full_hex_values_for_flutter_colors
                        color: Color(0xff000000), // Definindo a cor do texto
                      ) // Fim do TextStyle
                    ), // Fim do Text

                    const SizedBox(height: 10.0), // Comando utilizado para dar quebras de pixels na tela 

                    TextFormField( // Comando utilizado para a criação de um campo de um formulário de Login
                      keyboardType: TextInputType.emailAddress, // Comando que define o tipo de entrada de dado no teclado (Email)
                      inputFormatters: <TextInputFormatter>[ // Formatando o que será recebido do teclado
                        FilteringTextInputFormatter.singleLineFormatter 
                      ],

                      decoration: InputDecoration( //Decoração da caixa de entrada de dados
                        labelText: 'Digite aqui', // Hint a ser exibido dentro da caixa de entrada de dados
                        labelStyle: const TextStyle(
                          // ignore: use_full_hex_values_for_flutter_colors
                          color: Color(0xff93B6EE),
                        ),
                         enabledBorder: const OutlineInputBorder( // Definido o estilo da borda da caixa de entrada de dados quando não focado
                            borderSide: BorderSide(color: Color(0xFF000000)), // Cor da borda quando não está focado
                          ),

                          focusedBorder: const OutlineInputBorder( // Definido o estilo da borda da caixa de entrada de dado quando focada

                            // O comando abaixo foi utlizado para retirar um sublinhado de aviso
                            // ignore: use_full_hex_values_for_flutter_colors
                            borderSide: BorderSide(color:  Color(0xff93B6EE)), // Cor da borda quando está focado
                          ),

                          border: OutlineInputBorder( // Estilizando a borda da caixa de entrada de dados em geral
                            borderRadius: BorderRadius.circular(30.0), // Arredondamento das bordas
                          ), // Fim da decoração da borda
                      ), // Fim da decoração do input
                    ), // Fim do forms


                    const SizedBox(height: 20.0,),


                    const Text( // Criando o texto que irá acima de um TextFormField
                      'Senha', // Texto a ser exibido
                      style: TextStyle( // Comando utilizado para estilizar o texto
                        fontSize: 18.0, // Definindo o tamanho da fonte
                        fontWeight: FontWeight.bold, // Definindo o estilo da fonte (itálico, negrito, etc)

                        // O comando abaixo foi utlizado para retirar um sublinhado de aviso
                        // ignore: use_full_hex_values_for_flutter_colors
                        color: Color(0xff000000), // Definindo a cor do texto
                      ) // Fim do TextStyle
                    ), // Fim do Text

                    const SizedBox(height: 10.0), // Comando utilizado para dar quebras de pixels na tela

                    TextFormField( // Comando utilizado para a criação de um campo de um formulário de Login
                      keyboardType: TextInputType.text, // Comando que define o tipo de entrada de dado no teclado (tipo texto)
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.singleLineFormatter // Formatando o que será recebido do teclado
                      ],

                      decoration: InputDecoration( //Decoração da caixa de entrada de dados
                        labelText: 'Digite aqui', // Hint a ser exibido dentro da caixa de entrada de dados
                        labelStyle: const TextStyle(
                          // ignore: use_full_hex_values_for_flutter_colors
                          color: Color(0xff93B6EE),
                        ),
                         enabledBorder: const OutlineInputBorder( // Definido o estilo da borda da caixa de entrada de dados quando não focado
                            borderSide: BorderSide(color: Color(0xFF000000)), // Cor da borda quando não está focado
                          ),

                          focusedBorder: const OutlineInputBorder( // Definido o estilo da borda da caixa de entrada de dado quando focada

                            // O comando abaixo foi utlizado para retirar um sublinhado de aviso
                            // ignore: use_full_hex_values_for_flutter_colors
                            borderSide: BorderSide(color:  Color(0xff93B6EE)), // Cor da borda quando está focado
                          ),

                          border: OutlineInputBorder( // Estilizando a borda da caixa de entrada de dados em geral
                            borderRadius: BorderRadius.circular(30.0), // Arredondamento das bordas
                          ),
                      ), // Fim do TextStyle
                    ), // Fim do TextFormField

                    const SizedBox(height: 20.0), // Comando utilizado para dar quebras de pixels na tela

                    SizedBox( // Definição de um espaço que servirá como botão
                      width: double.infinity, // Ocupa toda a largura disponível
                      child: ElevatedButton( // Criando o botão de entrar
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MenuApp()),
                          );
                          print('Sucesso');
                        },
                        style: ElevatedButton.styleFrom( // Estilizando o botão

                          // O comando abaixo foi utlizado para retirar um sublinhado de aviso
                          // ignore: use_full_hex_values_for_flutter_colors
                          backgroundColor: const Color(0xff93B6EE), // Cor de fundo do botão
                          padding: const EdgeInsets.symmetric(vertical: 15), // Ajusta o padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0), // Definindo o arredondamento da borda
                          ),
                        ),
                        child: const Text( // Comando para a criação de texto
                          'Entrar', // Texto a ser exibido dentro do botão
                          style: TextStyle( // Estilização do botão
                            fontSize: 18.0, // Tamanho do texto
                            fontWeight: FontWeight.bold, // Definindo o estilo da fonte (itálico, negrito, etc)
                            color: Colors.white, // Cor do texto
                          ), // Fim do TextStyle
                        ), // Fim do Text
                      ), // Fim Elevated Button
                    ), // Fim do Sized Box

                  const SizedBox(height: 20.0), // Comando utilizado para dar quebras de pixels na tela

                  Align( // Comando para a definição de alinhamento
                    alignment: Alignment.centerRight, // Alinhando a posição do elemento
                    child: RichText(
                      text: TextSpan( // Comando de texto clicável
                        text: 'Já tenho uma conta', // Texto a ser exibido na tela
                          style: const TextStyle( // Estilização do texto
                            fontSize: 20, // Definindo o tamanho da fonte
                            fontWeight: FontWeight.bold, // Definindo o estilo da fonte (itálico, negrito, etc)

                            // O comando abaixo foi utlizado para retirar um sublinhado de aviso
                            // ignore: use_full_hex_values_for_flutter_colors
                            color: Color(0xff93B6EE), // Cor do texto
                            decoration: TextDecoration.underline, // Colocando o sublinhado
                          ),
                           recognizer: TapGestureRecognizer()
                         ..onTap = () { // Método ao clicar no texto
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const Login()),
                           );
                         // Colocar o caminho das outras páginas
                         },
                      ), // Fim do TextSpan
                    ),
                  ), // Fim do Align

                  GestureDetector( // Captação de gesto para o icon
                      onTap: () { // Metodo chamado ao clicar no icon
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const MenuApp()),
                          );
                      },
                      child: const Align( // Comando para a definição de alinhamento
                        alignment: Alignment.centerLeft, // Alinhando a posição do elemento
                        child: Icon( // Chamando um Icon
                          Icons.arrow_back, // Definindo o tamanho do Icon
                          size: 30.0, // Tamanho do Icon

                          // O comando abaixo foi utlizado para retirar um sublinhado de aviso
                          // ignore: use_full_hex_values_for_flutter_colors
                          color: Color(0xff93B6EE), // Cor do Icon
                        ),

                        // FIM DOS COMANDOS ANTERIORES


                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}