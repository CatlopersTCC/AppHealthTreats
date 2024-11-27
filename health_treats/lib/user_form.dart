import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:health_treats/login.dart';
import 'package:health_treats/menu.dart';
import 'package:health_treats/user.dart';
import 'package:health_treats/user_provider.dart';

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  TextEditingController controllerNome = TextEditingController(); // Extrai o conteúdo do campo nome
  TextEditingController controllerEmail = TextEditingController(); // Extrai o conteúdo do campo email
  TextEditingController controllerSenha = TextEditingController(); // Extrai o conteúdo do campo senha
  bool _obscureText = true; // Controla a visibilidade da senha
  final _formKey = GlobalKey<FormState>();  // Chave para o formulário

  void salvar() {
    UserProvider userProvider = UserProvider.of(context) as UserProvider;

    // Verifica se o formulário é válido
    if (_formKey.currentState?.validate() ?? false) {
      Usuario user = Usuario( // Cria um novo usuário
        nome: controllerNome.text,
        email: controllerEmail.text,
        senha: controllerSenha.text,
      );

      int usersLength = userProvider.users.length;
      userProvider.users.insert(usersLength, user); // Adiciona o novo usuário na lista

      // Navega para a tela de login após salvar
      Navigator.popAndPushNamed(context, "/login");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health Treats | Cadastro',
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
                          'Bem vindo!',
                          style: TextStyle(
                            fontSize: 50.0,
                            fontFamily: 'RedHatDisplay',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.4,
                          ),
                        ),
                        Text(
                          'sign to continue',
                          style: TextStyle(
                            fontSize: 37.0,
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
              const SizedBox(height: 50.0),
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
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      TextFormField(
                        controller: controllerNome,
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
                              color: Color.fromARGB(255, 27, 115, 255),  // Alterar a cor do erro para azul
                              width: 1.5,
                            ),
                          ),
                          focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff93B6EE),  // Outra cor para quando o campo está focado
                              width: 1.5,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, insira seu nome.';
                          } else if (value.length < 10) {
                            return 'Por favor, insira seu nome completo.';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        'E-mail',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF353535),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      TextFormField(
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
                              color: Color.fromARGB(255, 27, 115, 255),  // Alterar a cor do erro para azul
                              width: 1.5,
                            ),
                          ),
                           focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff93B6EE),  // Outra cor para quando o campo está focado
                              width: 1.5,
                            ),
                          ),
                          
                        ),
                        validator: (value) {
                          RegExp emailRegex = RegExp(
                            r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                          );
                          if (value == null || value.isEmpty) {
                            return 'Por favor, insira um email.';
                          } else if (!emailRegex.hasMatch(value)) {
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

                      const SizedBox(height: 10.0),

                      TextFormField(
                        controller: controllerSenha,
                        obscureText: _obscureText,
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
                              color: Color.fromARGB(255, 27, 115, 255),  // Alterar a cor do erro para azul
                              width: 1.5,
                            ),
                          ),
                           focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff93B6EE),  // Outra cor para quando o campo está focado
                              width: 1.5,
                            ),
                          ),
                          suffixIcon: IconButton( // Ícone para ocultar ou mostrar a senha
                            icon: Icon(
                              _obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined, // Mudar ícone de acordo com o opção escolhida (vísivel ou não)
                              color: const Color(0xFF93B6EE),
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText; // Alterar visibilidade ao clicar no ícone
                              });
                            },
                          ),
                        ), 
                        
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, insira uma senha.';
                          } else if (value.length < 6) {
                            return 'Senha muito curta. Pelo menos 6 caracteres.';
                          }
                          return null;
                        },
                      ),


                      const SizedBox(height: 40.0), 
                      ElevatedButton(
                        onPressed: salvar,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff93B6EE),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Cadastrar',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'RedHatDisplay',
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
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
                        // Comando para a definição de alinhamento
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
                        ]
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