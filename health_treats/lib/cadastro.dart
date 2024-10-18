import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_treats/login.dart';  // Certifique-se que este caminho está correto
import 'package:health_treats/menu.dart';   // Certifique-se que este caminho está correto

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  final _formKey = GlobalKey<FormState>();  // Chave para o formulário

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health Treats | Cadastro', // Título do app ao ser emulado
      home: Scaffold(
        body: SingleChildScrollView( // Scroll de tela
          child: Column( // Coloca os elementos numa espécie de coluna
            crossAxisAlignment: CrossAxisAlignment.stretch, // Ocupa a largura total da tela
            children: <Widget>[ // Indica que widgets serão criados
              Stack( //Foi utilizado para possibilitar a sobreposição do texto sobre a imagem
                children: <Widget>[
                  // Chamando a imagem
                  Image.asset(
                    // Caminho da imagem
                    'assets/img/Background.png',
                    // Expande a imagem por todo espaço definido
                    fit: BoxFit.cover,
                    // Utiliza 100% da largura de determinado espaço
                    width: double.infinity,
                    // Altura da imagem
                    height: 430.0,
                  ),

                  // Comando utilizado para definir a posição de algum elemento (Nesse caso o elemento é um Text)
                  const Positioned(
                    // Define a distância do Text para a margem superior
                    top: 40.0,
                    // Define a distância do Text para a margem esquerda
                    left: 30.0,
                    // Criando uma coluna para alocar o Text
                    child: Column(
                      // Alinha o texto à esquerda
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          // Criando o texto que irá se sobrepor a imagem
                          'Bem Vindo',
                          //Estilizando o texto
                          style: TextStyle(
                            fontSize: 50.0,
                            fontFamily: 'RedHatDisplay',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            // Definindo a altura, que servirá como espaçamento de uma linha a outr
                            height: 1.4,
                          ),
                        ),

                        Text(
                          'Sign to continue',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'RedHatDisplay',
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            height: 0.5,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              // Comando utilizado para dar quebras de pixels na tela 
              const SizedBox(height: 50.0),

              // Comando utilizado para ditar que os elementos presentes dentro dele fiquem no centro
              const Center(
                child: Text(
                  'Cadastro',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'RedHatDisplay',
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF353535),
                  ),
                ),
              ),

              // Comando utilizado para definir as distâncias de um elemento para a margem 
              Padding(
                // Definido a distância das margens laterais
                padding: const EdgeInsets.all(40.0),
                // Envolve os TextFormFields com um Form
                child: Form(  
                  // Associa a chave ao formulário
                  key: _formKey, 
                  // Criando uma coluna dentro do Padding
                  child: Column(
                    // Alinha o texto à esquerda
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Nome de usuário',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF353535),
                        ),
                      ),

                      const SizedBox(height: 10.0),

                      // Comando utilizado para a criação de um campo de um formulário de Login
                      TextFormField(
                        // Comando que define o tipo de entrada de dado no teclado (Email)
                        keyboardType: TextInputType.emailAddress, 
                        // Definindo o nuúmero máximo de caracteres
                        inputFormatters: [LengthLimitingTextInputFormatter(50)],
                        //Decoração da caixa de entrada de dados
                        decoration: InputDecoration(
                          // Hint
                          labelText: 'Digite aqui...',
                          labelStyle: const TextStyle(
                            color: Color(0xff93B6EE),
                          ),
                          // Definido o estilo da borda da caixa de entrada de dados quando não focado
                          enabledBorder: const OutlineInputBorder(
                            // Cor da borda quando não está focado
                            borderSide: BorderSide(color: Color(0xff93B6EE)),
                          ),
                          // Definido o estilo da borda da caixa de entrada de dado quando focada
                          focusedBorder: const OutlineInputBorder(
                            // Cor da borda quando está focado
                            borderSide: BorderSide(color: Color(0xff93B6EE)),
                          ),
                          // Estilizando a borda da caixa de entrada de dados em geral
                          border: OutlineInputBorder(
                            // Arredondamento das bordas
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          // Estilizando a caixa de entrada quando dá erro
                          errorBorder:  const OutlineInputBorder(
                            borderSide: BorderSide(
                              // Alterando a cor do erro para azul
                              color: Color(0xff93B6EE),  
                            ),
                          ),
                          // Estilizando a caixa de entrada quando dá erro -> focado
                          focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              // Alterando a cor do erro para azul
                              color: Color(0xff93B6EE),
                            ),
                          ),
                        ),
                        // Realizando a validação dos valores com uma REGEX
                        validator: (value) {
                          // Condicional para a validação
                          if (value == null || value.isEmpty) {
                            return 'Por favor insira um Nome';
                          }
                          return null;
                        },
                      ),

                      const SizedBox(height: 20.0),

                      const Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF353535),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.singleLineFormatter
                        ],
                        decoration: InputDecoration(
                          labelText: 'Digite aqui...',
                          labelStyle: const TextStyle(
                            color: Color(0xff93B6EE),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff93B6EE)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff93B6EE)),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff93B6EE),  // Alterar a cor do erro para azul
                            ),
                          ),
                          // Borda de erro quando o campo está focado
                          focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff93B6EE),  // Outra cor para quando o campo está focado
                            ),
                          ),
                        ),
                        validator: (value) {
                          RegExp emailRegex = RegExp(
                            r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                          if (value == null || value.isEmpty) {
                            return 'Por favor insira um email válido';
                          } else if (!emailRegex.hasMatch(value)) {
                            return 'Email inválido';
                          }
                          return null;
                        },
                      ),

                      const SizedBox(height: 20.0),

                      const Text(
                        'Senha',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF353535),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.singleLineFormatter
                        ],
                        decoration: InputDecoration(
                          labelText: 'Digite aqui...',
                          labelStyle: const TextStyle(
                            color: Color(0xff93B6EE),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff93B6EE)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff93B6EE)),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff93B6EE),  // Alterar a cor do erro para azul
                            ),
                          ),
                          // Borda de erro quando o campo está focado
                          focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff93B6EE),  // Outra cor para quando o campo está focado
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor insira uma senha';
                          } else if(value.length < 6){
                            return 'A senha deve ter pelo menos 6 caracteres';
                          }
                          return null;
                        },
                      ),

                      const SizedBox(height: 20.0),

                      // Definição de um espaço que servirá como botão
                      SizedBox(
                         // Ocupa toda a largura disponível
                        width: double.infinity,
                        // Criando o botão de entrar
                        child: ElevatedButton(
                          // Método de navegação ao clicar no botão
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
                          // Estilizando o botão
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff93B6EE),
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          child: const Text(
                            // Texto a ser exibido dentro do botão
                            'Entrar',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'RedHatDisplay',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 30.0),

                      // Comando para a definição de alinhamento -- UTILIZADO PARA A PARTE DO "Já tenho uma conta"
                      Align(
                        // Alinhando a posição do elemento
                        alignment: Alignment.centerRight,
                        child: RichText(  
                          // Comando de texto clicável
                          text: TextSpan(
                            text: 'Já tem uma conta? ',
                            style: const TextStyle(
                              color: Color(0xff93B6EE),
                              fontFamily: 'RedHatDisplay',
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              decoration: TextDecoration.underline,
                            ),
                            
                          // Ação ao clicar no texto
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Login(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}