import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_treats/menu.dart';
import 'package:health_treats/user_provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controllerEmail = TextEditingController(); 
  TextEditingController controllerSenha = TextEditingController(); 
  bool _obscureText = true; 

  void login() {
    UserProvider userProvider = UserProvider.of(context) as UserProvider; 

    try {
      final usuario = userProvider.users.firstWhere(
        (user) => user.email == controllerEmail.text && user.senha == controllerSenha.text, 
      );

      // ignore: unnecessary_null_comparison
      if (usuario != null) {
        Navigator.pushReplacementNamed(context, "/menu"); // Usando pushReplacement para evitar que o usuário volte à tela de login
      }
    } catch (e) {
      // Caso o usuário não seja encontrado, exibimos a mensagem de erro
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Erro"),
          content: const Text("Email ou senha inválidos."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Ok"),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView( 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/img/Background.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 430.0,
                  ),
                  const Positioned(
                    top: 40.0,
                    left: 30.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Bem vindo \nde volta!',
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.2,
                          ),
                        ),
                        Text(
                          'sign to continue',
                          style: TextStyle(
                            fontFamily: 'RedHatDisplay',
                            fontWeight: FontWeight.normal,
                            fontSize: 26.0,
                            color: Colors.white,
                            height: 0.9,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'RedHatDisplay',
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF353535),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'E-mail',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'RedHatDisplay',
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF353535),
                      ),
                    ),
                    const SizedBox(height: 2.0),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.deny(RegExp('[\\n]')),
                      ],
                      controller: controllerEmail,
                      decoration: InputDecoration(
                        labelText: 'Digite aqui...',
                        labelStyle: const TextStyle(
                          color: Color(0xff93B6EE),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff93B6EE),
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff93B6EE),
                            width: 1.5,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 27, 115, 255),
                            width: 1.5,
                          ),
                        ),
                        focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff93B6EE),
                            width: 1.5,
                          ),
                        ),
                      ),
                      validator: (controllerEmail) {
                        RegExp emailRegex = RegExp(
                          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                        );
                        if (controllerEmail == null || controllerEmail.isEmpty) {
                          return 'Por favor, insira um email.';
                        } else if (!emailRegex.hasMatch(controllerEmail)) {
                          return 'Email inválido.';
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
                    const SizedBox(height: 2.0),
                    TextFormField(
                      obscureText: _obscureText,
                      controller: controllerSenha,
                      decoration: InputDecoration(
                        labelText: 'Digite aqui...',
                        labelStyle: const TextStyle(
                          color: Color(0xff93B6EE),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff93B6EE),
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff93B6EE),
                            width: 1.5,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 27, 115, 255),
                            width: 1.5,
                          ),
                        ),
                        focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff93B6EE),
                            width: 1.5,
                          ),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                            color: const Color(0xFF93B6EE),
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                      validator: (controllerSenha) {
                        if (controllerSenha == null || controllerSenha.isEmpty) {
                          return 'Por favor, insira uma senha.';
                        } else if (controllerSenha.length < 6) {
                          return 'A senha deve ter pelo menos 6 caracteres.';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 25.0),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: login,
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
                    ),

                    const SizedBox(height: 20.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribui os elementos para as extremidades
                      children: <Widget>[
                        GestureDetector( // Captação de gesto para o ícone
                          onTap: () { // Método chamado ao clicar no ícone
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const MenuApp()),
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
                                    builder: (context) => const MenuApp()
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}