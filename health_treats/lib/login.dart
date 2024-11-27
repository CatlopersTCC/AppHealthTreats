import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_treats/menu.dart';
import 'package:health_treats/user_form.dart';
import 'package:health_treats/user_provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controllerEmail = TextEditingController(); // Extrai o conteúdo do campo Email
  TextEditingController controllerSenha = TextEditingController(); // Extrai o conteúdo do campo senha
  bool _obscureText = true; // Controla a visibilidade da senha

  void login() { // Método chamado no botão de "entrar"
    UserProvider userProvider = UserProvider.of(context) as UserProvider; // Utilizando o providenciador de serviços

    final usuario = userProvider.users.firstWhere(
      (user) => user.email == controllerEmail.text && user.senha == controllerSenha.text, // Verificando se o registro existe
    );

    if (usuario != null) {
      Navigator.pushNamed(context, "/menu"); // Navega para a tela principal
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Erro"),
          content: Text("Email ou senha inválidos."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Ok"),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( // Corpo da tela
        body: SingleChildScrollView( // Scroll da tela
          child: Column( // Cria uma coluna que receberá novos elementos
            crossAxisAlignment: CrossAxisAlignment.stretch, // Ocupa toda a largura da tela
            children: <Widget>[
              Stack( // Foi utilizado para possibilitar a sobreposição do texto sobre a imagem
                children: <Widget>[
                  Image.asset( // Comando que chama a imagem
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
                      children: <Widget>[ // Permite construir vários elementos
                        Text( // Criando o texto que irá se sobrepor a imagem
                          'Bem vindo \nde volta!', // \n é quebra de linha
                          style: TextStyle( // Comando utilizado para estilizar o texto
                            fontSize: 50.0, // Definindo o tamanho da fonte
                            fontWeight: FontWeight.bold, // Definindo o estilo da fonte (itálico, negrito, etc)
                            color: Colors.white, // Definindo a cor do texto
                            height: 1.2, // Definindo a altura, que servirá como espaçamento de uma linha a outra
                          ),
                        ),

                        Text( // Criando um novo texto que também irá se sobrepor a imagem de fundo
                          'sign to continue', // Texto que será exibido
                          style: TextStyle( // Comando utilizado para estilizar o texto
                            fontFamily: 'RedHatDisplay', // Fonte estilizada
                            fontWeight: FontWeight.normal, // Estilo da fonte
                            fontSize: 26.0, // Definindo o tamanho da fonte
                            color: Colors.white, // Definindo a cor do texto
                            height: 0.9, // Definindo a altura, que, nesse caso, servirá de espaçamento de um Text ao outro
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 30.0), // Comando utilizado para dar quebras de pixels na tela 

              const Center( // Comando utilizado para ditar que os elementos presentes dentro dele fiquem no centro
                child: Text( // Criando um elemento de texto
                  'Login', // Texto a ser exibido na tela 
                  style: TextStyle( // Comando utilizado para estilizar o texto
                    fontSize: 30, // Definindo o tamanho da fonte
                    fontFamily: 'RedHatDisplay', // Fonte estilizada
                    fontWeight: FontWeight.bold, // Estilo da fonte
                    color: Color(0XFF353535), // Definindo a cor do texto
                  ),
                ),
              ),

              Padding( // Comando utilizado para definir as distâncias de um elemento para a margem 
                padding: const EdgeInsets.all(30.0), // Adicionando espaçamento de 30 pixels para todas as direções
                child: Column( // Criando uma coluna dentro do Padding
                  crossAxisAlignment: CrossAxisAlignment.start, // Alinha o texto à esquerda
                  children: <Widget>[ // Indica que widgets serão criados
                    const Text( // Criando o texto que irá acima de um TextFormField
                      'E-mail', // Texto a ser exibido
                      style: TextStyle( // Comando utilizado para estilizar o texto
                        fontSize: 18.0, // Definindo o tamanho da fonte
                        fontFamily: 'RedHatDisplay', // Fonte estilizada
                        fontWeight: FontWeight.w500, // Estilo da fonte
                        color: Color(0XFF353535), // Definindo a cor do texto
                      )
                    ),

                    const SizedBox(height: 2.0), // Comando utilizado para dar quebras de pixels na tela

                    TextFormField(
                      keyboardType: TextInputType.emailAddress, // Comando que define o tipo de entrada de dado no teclado (Email)
                      inputFormatters: <TextInputFormatter>[ // Formatando o que será recebido do teclado
                        FilteringTextInputFormatter.deny(RegExp('[\\n]')), // Permitindo apenas uma linha de texto
                      ],
                      controller: controllerEmail, // Controladora do conteúdo do TextFormField
                      decoration: InputDecoration( // Decoração da caixa de entrada de dados
                        labelText: 'Digite aqui...', // Texto a ser exibido dentro da caixa de entrada de dados
                        labelStyle: const TextStyle(
                          color: Color(0xff93B6EE),
                        ),
                        enabledBorder: const OutlineInputBorder( // Definido o estilo da borda da caixa de entrada de dados quando não focado
                          borderSide: BorderSide(
                            color: Color(0xff93B6EE), // Cor da borda natural
                            width: 1.5, // Largura da borda natural
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder( // Definido o estilo da borda da caixa de entrada de dado quando focada
                          borderSide: BorderSide(
                            color:  Color(0xff93B6EE), // Cor da borda quando está focado
                            width: 1.5, // Largura da borda focada
                          ),
                        ),
                        border: OutlineInputBorder( // Estilizando a borda da caixa de entrada de dados em geral
                          borderRadius: BorderRadius.circular(30.0), // Arredondamento das bordas
                        ),
                        errorBorder:  const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 27, 115, 255), // Alterando a cor do erro para azul  
                            width: 1.5, // Largura da borda com erro
                          ),
                        ),
                        focusedErrorBorder: const OutlineInputBorder( // Estilizando a caixa de entrada quando dá erro e está focada
                          borderSide: BorderSide(
                            color: Color(0xff93B6EE), // Alterando a cor do erro para azul
                            width: 1.5, // Largura da borda
                          ),
                        ),
                      ),
                      validator: (controllerEmail) {  //Colocando uma validação (regex) de email
                        RegExp emailRegex = RegExp(
                          //Valor da Regex
                          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
                        );
                        // Se o valor for nulo -> mensagem de erro será exibida
                        if (controllerEmail == null || controllerEmail.isEmpty) {
                          return 'Por favor, insira um email.';
                        }
                        // Se o valor for diferente da regex -> mensagem de erro será exibida 
                        else if (!emailRegex.hasMatch(controllerEmail)) {
                          return 'Email inválido.';
                        }
                        // Se tudo ocorrer bem, o processo seguirá
                        return null;
                      },
                    ),

                    const SizedBox(height: 20.0), // Comando utilizado para dar quebras de pixels na tela

                    const Text( // Criando o texto que irá acima de um TextFormField
                      'Senha', // Texto a ser exibido
                      style: TextStyle( // Comando utilizado para estilizar o texto
                        fontSize: 18.0, // Definindo o tamanho da fonte
                        fontFamily: 'RedHatDisplay', // Fonte estilizada
                        fontWeight: FontWeight.w500, // Estilo da fonte
                        color: Color(0XFF353535), // Definindo a cor do texto
                      )
                    ),

                    const SizedBox(height: 2.0), // Comando utilizado para dar quebras de pixels na tela

                    TextFormField( // Campo: Senha
                      obscureText: _obscureText, // Ocultar ou exibir o texto da senha
                      controller: controllerSenha,
                      decoration: InputDecoration( // Decoração da caixa de entrada de dados
                        labelText: 'Digite aqui...', // Texto a ser exibido dentro da caixinha de texto
                        labelStyle: const TextStyle(
                          // ignore: use_full_hex_values_for_flutter_colors
                          color: Color(0xff93B6EE), // Cor do texto que ficará na label
                        ),
                        enabledBorder: const OutlineInputBorder( // Definido o estilo da borda da caixa de entrada de dados quando não focado
                          borderSide: BorderSide(
                            color: Color(0xff93B6EE), // Cor da borda quando não está focado
                            width: 1.5, // Largura da borda não focada
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder( // Definido o estilo da borda da caixa de entrada de dado quando focada
                          borderSide: BorderSide(
                            color:  Color(0xff93B6EE), // Cor da borda quando está focado
                            width: 1.5, // Largura da borda focada
                          ),
                        ),
                        border: OutlineInputBorder( // Estilizando a borda da caixa de entrada de dados em geral
                          borderRadius: BorderRadius.circular(30.0), // Arredondamento das bordas
                        ),
                          errorBorder: const OutlineInputBorder( // Borda natural ao dar erro 
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 27, 115, 255),  // Alterar a cor do erro para azul
                            width: 1.5, // Largura da borda
                          ),
                        ),
                        focusedErrorBorder: const OutlineInputBorder( // Borda de erro quando o campo está focado
                          borderSide: BorderSide(
                            color: Color(0xff93B6EE),  // Outra cor para quando o campo está focado
                            width: 1.5, // Largura da borda
                          ),
                        ),
                        suffixIcon: IconButton( // Ícone para ocultar ou mostrar a senha
                          icon: Icon( // Constrõe um ícone na tela
                            _obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined, // Mudar ícone de acordo com o opção escolhida (vísivel ou não)
                            color: const Color(0xFF93B6EE), // Cor do ícone
                          ),
                          onPressed: () { // Função ao ser clicado
                            setState(() { // Alterando o estado do ícone
                              _obscureText = !_obscureText; // Altera a visibilidade ao clicar no ícone
                            });
                          },
                        ),
                      ),
                      validator: (controllerSenha) { // Validação do campo de senha
                        // Se a senha for nula -> mensagem de erro exibida 
                        if (controllerSenha == null || controllerSenha.isEmpty) {
                          return 'Por favor, insira uma senha.';
                        }
                        // Se a senha não tiver o número de caracteres necessários -> mensagem de erro exibida 
                        else if (controllerSenha.length < 6) {
                          return 'A senha deve ter pelo menos 6 caracteres.';
                        }
                        // Se tudo ocorrer bem, o processo seguirá
                        return null;
                      },
                    ),

                    const SizedBox(height: 25.0), // Espaçamento do entre o TextFormField e o botão

                    SizedBox(
                      width: double.infinity, // Ocupa a largura total do elemento pai
                      child: ElevatedButton( // Constrõe um botão na tela
                        onPressed: login, // Função que executa o login
                        style: ElevatedButton.styleFrom( // Estilizando o botão
                          backgroundColor: const Color(0xff93B6EE), // Cor de fundo do botão
                          padding: const EdgeInsets.symmetric(vertical: 15), // Ajusta o padding
                          shape: RoundedRectangleBorder( // Arredondamento
                            borderRadius: BorderRadius.circular(5.0), // Definindo o arredondamento da borda
                          ),
                        ),
                        child: const Text( // Comando para a criação de texto
                          'Entrar', // Texto a ser exibido dentro do botão
                          style: TextStyle( // Estilização do botão
                            fontSize: 18.0, // Tamanho do texto
                            fontFamily: 'RedHatDisplay', // Fonte estilizada
                            fontWeight: FontWeight.normal, // Estilo da fonte
                            color: Colors.white, // Cor do texto
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 110.0), // Comando utilizado para dar quebras de pixels na tela

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribui os elementos para as extremidades
                      children: <Widget>[ // Permite a construção de vários widgets
                        GestureDetector( // Captação de gesto para o ícone
                          onTap: () { // Método chamado ao clicar no ícone
                            Navigator.push( // Direcionamento
                              context,
                              MaterialPageRoute(builder: (context) => const UserForm()), // Direciona para a página escolhida
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
                          child: RichText( // Sublinha o texto
                            text: TextSpan( // Comando de texto clicável
                              text: 'Entrar sem cadastro', // Texto a ser exibido na tela
                              style: const TextStyle( // Estilização do texto
                                fontSize: 16, // Definindo o tamanho da fonte
                                fontFamily: 'RedHatDisplay', // Fonte estilizada
                                fontWeight: FontWeight.bold, // Estilo da fonte
                                color: Color(0xff93B6EE), // Cor do texto
                                decoration: TextDecoration.underline, // Colocando o sublinhado
                              ),
                              // Quando for pressionado -> o usuário é enviado para a tela de menu
                              recognizer: TapGestureRecognizer() // Permite que o elemento seja clicável
                              ..onTap = () { // Ao ser clicado, executa essa função
                                Navigator.push( // Direcionamento
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MenuApp(), // Direciona para a página escolhida
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ]
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
