// Imports necessários
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_treats/cadastro.dart';
import 'package:health_treats/menu.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  
  @override
  _LoginState createState() => _LoginState();
}

// Classe que contém todo o conteúdo a ser exibido na tela
class _LoginState extends State<Login> {
  bool _obscureText = true; // Controla a visibilidade da senha
  final _formKey = GlobalKey<FormState>();  // Chave para o formulário

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health Treats | Login', //Título que vai no app (quando emulado no navegador)
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
                          'Bem vindo \nde volta!', // \n é quebra de linha
                          style: TextStyle( // Comando utilizado para estilizar o texto
                            fontSize: 50.0, // Definindo o tamanho da fonte
                            fontWeight: FontWeight.bold, // Definindo o estilo da fonte (itálico, negrito, etc)
                            color: Colors.white, // Definindo a cor do texto
                            height: 1.2, // Definindo a altura, que servirá como espaçamento de uma linha a outra
                          ), // Fim do TextStyle
                        ), // Fim do Text

                        Text( //Criando um novo texto que também irá se sobrepor a imagem de fundo
                          'sign to continue', // Texto que será exibido
                          style: TextStyle( // Comando utilizado para estilizar o texto
                            fontFamily: 'RedHatDisplay',
                            fontWeight: FontWeight.normal,
                            fontSize: 26.0, // Definindo o tamanho da fonte
                            color: Colors.white, // Definindo a cor do texto
                            height: 0.9, // Definindo a altura, que, nesse caso, servirá de espaçamento de um Text ao outro
                          ), // Fim do TextStyle
                        ), // Fim do Text
                      ],
                    ), // Fim do comando da definição da coluna
                  ) // Fim do comando de determinação de posição
                ],
              ), // Fim do Stack

              const SizedBox(height: 30.0), // Comando utilizado para dar quebras de pixels na tela 

              const Center( // Comando utilizado para ditar que os elementos presentes dentro dele fiquem no centro
                child: Text( // Criando um elemento de texto
                  'Login', // Texto a ser exibido na tela 
                  style: TextStyle( // Comando utilizado para estilizar o texto
                    fontSize: 30, // Definindo o tamanho da fonte
                    fontFamily: 'RedHatDisplay',
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF353535), // Definindo a cor do texto
                  ), // Fim do TextStyle
                ), // Fim do Text
              ), // Fim do Center

              Padding( // Comando utilizado para definir as distâncias de um elemento para a margem 
                padding: const EdgeInsets.all(30.0), // Definido a distância das margens laterais
                child: Form(
                  key: _formKey, // Associando o formulário ao _formKey
                  child: Column( // Criando uma coluna dentro do Padding
                    crossAxisAlignment: CrossAxisAlignment.start, // Alinha o texto à esquerda
                    children: <Widget>[ // Indica que widgets serão criados
                      const Text( // Criando o texto que irá acima de um TextFormField
                        'E-mail', // Texto a ser exibido
                        style: TextStyle( // Comando utilizado para estilizar o texto
                          fontSize: 18.0, // Definindo o tamanho da fonte
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF353535), // Definindo a cor do texto
                        ) // Fim do TextStyle
                      ), // Fim do Text

                      const SizedBox(height: 2.0), // Comando utilizado para dar quebras de pixels na tela 

                      TextFormField( // Comando utilizado para a criação de um campo de um formulário de Login
                        keyboardType: TextInputType.emailAddress, // Comando que define o tipo de entrada de dado no teclado (Email)
                        inputFormatters: <TextInputFormatter>[ // Formatando o que será recebido do teclado
                          FilteringTextInputFormatter.deny(RegExp('[\\n]')), // Permitindo apenas uma linha de texto
                        ],
                        decoration: InputDecoration( //Decoração da caixa de entrada de dados
                          labelText: 'Digite aqui...', // Hint a ser exibido dentro da caixa de entrada de dados
                          labelStyle: const TextStyle(
                            color: Color(0xff93B6EE),
                          ),
                          enabledBorder: const OutlineInputBorder( // Definido o estilo da borda da caixa de entrada de dados quando não focado
                            borderSide: BorderSide(color: 
                              Color(0xff93B6EE),
                              width: 1.5,
                            ), // Cor da borda quando não está focado
                          ),
                          focusedBorder: const OutlineInputBorder( // Definido o estilo da borda da caixa de entrada de dado quando focada
                            borderSide: BorderSide(
                              color:  Color(0xff93B6EE),
                              width: 1.5,
                            ), // Cor da borda quando está focado
                          ),

                          border: OutlineInputBorder( // Estilizando a borda da caixa de entrada de dados em geral
                            borderRadius: BorderRadius.circular(30.0), // Arredondamento das bordas
                          ), // Fim da decoração da borda
                          errorBorder:  const OutlineInputBorder(
                            borderSide: BorderSide(
                              // Alterando a cor do erro para azul
                              color: Color.fromARGB(255, 27, 115, 255),  
                              width: 1.5,
                            ),
                          ),
                          // Estilizando a caixa de entrada quando dá erro -> focado
                          focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              // Alterando a cor do erro para azul
                              color: Color(0xff93B6EE),
                              width: 1.5,
                            ),
                          ),
                        ), // Fim da decoração do input
                        validator: (value) {
                          RegExp emailRegex = RegExp(
                            r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                          if (value == null || value.isEmpty) {
                            return 'Por favor, insira um email.';
                          } else if (!emailRegex.hasMatch(value)) {
                            return 'Email inválido.';
                          }
                          return null;
                        },
                      ), // Fim do forms
                      
                      const SizedBox(height: 20.0), // Comando utilizado para dar quebras de pixels na tela

                      const Text( // Criando o texto que irá acima de um TextFormField
                        'Senha', // Texto a ser exibido
                        style: TextStyle( // Comando utilizado para estilizar o texto
                          fontSize: 18.0, // Definindo o tamanho da fonte
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF353535), // Definindo a cor do texto
                        ) // Fim do TextStyle
                      ), // Fim do Text

                      const SizedBox(height: 2.0), // Comando utilizado para dar quebras de pixels na tela 

                      TextFormField( //Comando utilizado para a criação de um campo de um formulário de senha
                        obscureText: _obscureText, // Ocultar ou exibir o texto da senha
                        decoration: InputDecoration( // Decoração da caixa de entrada de dados
                          labelText: 'Digite aqui...', // Texto a ser exibido
                          labelStyle: const TextStyle(
                            // ignore: use_full_hex_values_for_flutter_colors
                            color: Color(0xff93B6EE), // Cor do texto que ficará na label
                          ),
                          enabledBorder: const OutlineInputBorder( // Definido o estilo da borda da caixa de entrada de dados quando não focado
                            borderSide: BorderSide(
                              color: Color(0xff93B6EE),
                              width: 1.5,
                            ), // Cor da borda quando não está focado
                          ),
                          focusedBorder: const OutlineInputBorder( // Definido o estilo da borda da caixa de entrada de dado quando focada
                            borderSide: BorderSide(
                              color:  Color(0xff93B6EE),
                              width: 1.5,
                            ), // Cor da borda quando está focado
                          ),
                          border: OutlineInputBorder( // Estilizando a borda da caixa de entrada de dados em geral
                            borderRadius: BorderRadius.circular(30.0), // Arredondamento das bordas
                          ),
                           errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 27, 115, 255),  // Alterar a cor do erro para azul
                              width: 1.5,
                            ),
                          ),
                          // Borda de erro quando o campo está focado
                          focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff93B6EE),  // Outra cor para quando o campo está focado
                              width: 1.5,
                            ),
                          ),
                          suffixIcon: IconButton( // Ícone para ocultar ou mostrar a senha
                            icon: Icon(
                              _obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined, // Mudar ícone de acordo com o estado
                              color: const Color(0xFF93B6EE),
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText; // Alterar visibilidade ao clicar no ícone
                              });
                            },
                          ),
                        ),
                        validator: (value) { // Validação do campo de senha
                          if (value == null || value.isEmpty) {
                            return 'Por favor, insira uma senha.';
                          } else if (value.length < 6) {
                            return 'A senha deve conter ao menos 6 caracteres.';
                          }
                          return null;
                        },
                      ), // Fim do forms

                    const SizedBox(height: 25.0), // Comando utilizado para dar quebras de pixels na tela

                    SizedBox( // Definição de um espaço que servirá como botão
                      width: double.infinity, // Ocupa toda a largura disponível
                      child: ElevatedButton( // Criando o botão de entrar
                        onPressed: () {
                            // Verifica se o formulário é válido
                            if (_formKey.currentState?.validate() ?? false) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MenuApp(),
                                ),
                              );
                            }
                          },
                        style: ElevatedButton.styleFrom( // Estilizando o botão
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
                            fontFamily: 'RedHatDisplay',
                            fontWeight: FontWeight.normal,
                            color: Colors.white, // Cor do texto
                          ), // Fim do TextStyle
                        ), // Fim do Text
                      ), // Fim Elevated Button
                    ), // Fim do Sized Box

                  const SizedBox(height: 110.0), // Comando utilizado para dar quebras de pixels na tela

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribui os elementos para as extremidades
                      children: <Widget>[
                        GestureDetector( // Captação de gesto para o ícone
                          onTap: () { // Método chamado ao clicar no ícone
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const TelaCadastro()),
                            );
                          },
                          child: const Icon( // Chamando um ícone
                            Icons.arrow_back, // Definindo o ícone
                            size: 30.0, // Tamanho do ícone
                            color: Color(0xff93B6EE), // Cor do ícone
                          ),
                        ),
                        Align( // Comando para a definição de alinhamento
                          alignment: Alignment.centerRight, // Alinhando a posição do elemento
                          child: RichText(
                            text: TextSpan( // Comando de texto clicável
                              text: 'Entrar sem cadastro', // Texto a ser exibido na tela
                              style: const TextStyle( // Estilização do texto
                                fontSize: 16, // Definindo o tamanho da fonte
                                fontFamily: 'RedHatDisplay',
                                fontWeight: FontWeight.bold,
                                color: Color(0xff93B6EE), // Cor do texto
                                decoration: TextDecoration.underline, // Colocando o sublinhado
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                  context,
                                    MaterialPageRoute(
                                      builder: (context) => const MenuApp(),
                                    ),
                                  );
                                  // Método ao clicar no texto
                                  // Ação a ser executada quando o texto for clicado
                                  // Colocar o caminho das outras páginas
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}