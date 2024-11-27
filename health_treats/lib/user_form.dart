import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:health_treats/login.dart';
import 'package:health_treats/menu.dart';
import 'package:health_treats/user.dart';
import 'package:health_treats/user_provider.dart';
import 'user_provider.dart';

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

  @override
  Widget build(BuildContext context) {
    
    void salvar() { // Método salvar é executado dentro da cadastro

      UserProvider userProvider = UserProvider.of(context) as UserProvider; // Utilizando o providenciador de serviços

      Usuario user = Usuario( // Carrega a classe do Usuário
        nome: controllerNome.text, // Campo nome é introduzido à classe
        email: controllerEmail.text, // Campo email é introduzido à classe
        senha: controllerSenha.text, // Campo senha é introduzido à classe
      );

      int usersLenght = userProvider.users.length; // Recupera o número de usuários dentro da classe

      userProvider.users.insert(usersLenght, user); // Insere novos usuários dentro da classe

      Navigator.popAndPushNamed(context, "/login"); // Encaminha para a tela de login
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false, // Tira a bandeira de debug
      title: 'Health Treats | Cadastro', // Título do aplicativo ao ser emulado
      home: Scaffold( // Corpo do aplicativo
        body: SingleChildScrollView( // Scroll da tela
          child: Column( // Dispõe os filhos em colunas
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[ // Permite a construção de vários widgets
              Stack( //Foi utilizado para possibilitar a sobreposição do texto sobre a imagem
                children: <Widget>[ // Permite a construção de vários widgets
                  Image.asset( // Chamando a imagem
                    'assets/img/Background.png', // Caminho da imagem
                    fit: BoxFit.cover, // Expande a imagem por todo espaço definido
                    width: double.infinity, // Utiliza 100% da largura de determinado espaço
                    height: 430.0, // Altura da imagem
                  ),

                  const Positioned( // Comando utilizado para definir a posição de algum elemento (Nesse caso o elemento é um Text)
                    top: 40.0, // Define a distância do Text para a margem superior
                    left: 30.0, // Define a distância do Text para a margem esquerda
                    child: Column( // Criando uma coluna para alocar o Text
                      crossAxisAlignment: CrossAxisAlignment.start, // Alinha o texto à esquerda
                      children: <Widget>[ // Permite a construção de vários widgets
                        Text(
                          'Bem vindo!', // Criando o texto que irá se sobrepor a imagem
                          style: TextStyle( //Estilizando o texto
                            fontSize: 50.0, // Definido o tamanho da fonte
                            fontFamily: 'RedHatDisplay', // Fonte estilizada
                            fontWeight: FontWeight.bold, // Estilo da fonte
                            color: Colors.white, // Cor da fonte
                            height: 1.4, // Definindo a altura de espaçamento
                          ),
                        ),

                        Text( // Cria um texto
                          'sign to continue', // Subtítulo
                          style: TextStyle( // Estilização de texto
                            fontSize: 37.0, // Tamanho do subtítulo
                            fontFamily: 'RedHatDisplay', // Fonte estilizada
                            fontWeight: FontWeight.normal, // Estilo da fonte
                            color: Colors.white, // Cor da fonte
                            height: 0.5, // Definindo a altura de espaçamento
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 50.0), // Comando utilizado para dar quebras de pixels na tela 

              const Center( // Comando utilizado para ditar que os elementos presentes dentro dele fiquem no centro
                child: Text( // Cria um texto
                  'Cadastro', // Título
                  style: TextStyle( // Estilização do texto
                    fontSize: 30, // Tamanho do texto
                    fontFamily: 'RedHatDisplay', // Fonte estilizada
                    fontWeight: FontWeight.bold, // Estilização da fonte
                    color: Color(0XFF353535), // Cor da fonte
                  ),
                ),
              ),

              Padding( // Espaçamento dos elementos
                padding: const EdgeInsets.all(40.0), // Espaçamento em toda a seção
                child: Column( // Dispõe os filhos em colunas
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[ // Permite a construção de vários widgets
                    
                    const Text( 
                      'Nome de usuário', // Título acima do TextFormField 
                      style: TextStyle( // Permite estilizar o texto
                        fontSize: 18.0, // Tamanho da fonte
                        fontFamily: 'RedHatDisplay', // Fonte estilizada
                        fontWeight: FontWeight.w500, // Estilo da fonte
                        color: Color(0XFF353535), // Cor da fonte
                      ),
                    ),
                    
                    const SizedBox(height: 10.0), // Ajustando o espaçamento

                    TextFormField( // Campo: Nome
                      controller: controllerNome, 
                      decoration: InputDecoration( // Início da decoração
                        labelText: 'Digite aqui...', // Texto que aparece dentro do campo
                        labelStyle: const TextStyle( // Estilo do texto de exemplo
                          color: Color(0xff93B6EE), // Cor da borda
                        ),
                        enabledBorder: const OutlineInputBorder( // Borda natural
                          borderSide: BorderSide( // Estilização da borda natural
                            color: Color(0xff93B6EE), // Cor da borda 
                            width: 1.5, // Largura da borda
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder( // Borda selecionada
                          borderSide: BorderSide( // Estilização da borda selecionada
                            color: Color(0xff93B6EE), // Cor da borda
                            width: 1.5, // Largura da borda
                          ),
                        ),
                        border: OutlineInputBorder( // Permite o arredondamento
                          borderRadius: BorderRadius.circular(30.0), // Arredondando
                        ),
                        errorBorder: const OutlineInputBorder( // Borda natural ao apresentar erro
                          borderSide: BorderSide( // Estilização da borda natural ao apresentar erro
                            color: Color.fromARGB(255, 27, 115, 255), // Cor da borda
                            width: 1.5, // Largura da borda
                          ),
                        ),
                        focusedErrorBorder: const OutlineInputBorder( // Borda selecionada ao apresentar erro
                          borderSide: BorderSide( // Estilização da borda selecionada ao apresentar erro
                            color: Color(0xff93B6EE), // Cor da borda
                            width: 1.5, // Largura da borda
                          ),
                        ),
                      ),
                      validator: (controllerNome) { // Validação no campo nome
                        // Se o nome estiver vazio ou nulo, executa
                        if (controllerNome == null || controllerNome.isEmpty) {
                          return 'Por favor, insira seu nome.'; // Mensagem exibida ao usuário
                        }
                        // Se o nome for menor que 10, executa
                        else if (controllerNome.length < 10) {
                          return 'Por favor, insira seu nome completo.'; // Mensagem exibida ao usuário
                        }
                        return null; // Caso não seja nenhum dos casos
                      },
                    ),

                    const SizedBox(height: 20.0), // Espaçamento entre um TextFormField e outro

                    const Text(
                      'E-mail', // Texto acima do TextFieldForm
                      style: TextStyle( // Permite estilizar o texto
                        fontSize: 18.0, // Tamanho da fonte
                        fontFamily: 'RedHatDisplay', // Fonte estilizada
                        fontWeight: FontWeight.w500, // Estilo da fonte
                        color: Color(0XFF353535), // Cor da fonte
                      ),
                    ),

                    const SizedBox(height: 10.0), // Espaço entre o Título e o TextFormField 

                    TextFormField( // Campo: Email 
                      controller: controllerEmail, // Extrai o conteúdo do campo
                      decoration: InputDecoration( // Início da decoração
                        labelText: 'Digite aqui...', // Texto que aparece dentro do campo
                        labelStyle: const TextStyle( // Estilização do texto de exemplo
                          color: Color(0xff93B6EE), // Cor do texto
                        ),
                        enabledBorder: const OutlineInputBorder( // Borda natural
                          borderSide: BorderSide( // Estilo da borda natural
                            color: Color(0xff93B6EE), // Cor da borda
                            width: 1.5, // Largura da borda
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder( // Borda selecionada 
                          borderSide: BorderSide( // Estilização da borda selecionada 
                            color: Color(0xff93B6EE), // Cor da borda
                            width: 1.5, // Largura da borda
                          ),
                        ),
                        border: OutlineInputBorder( // Arredondamento da borda
                          borderRadius: BorderRadius.circular(30.0), // Arredondando
                        ),
                        errorBorder: const OutlineInputBorder( // Borda ao apresentar erro
                          borderSide: BorderSide( // Estilização da borda ao apresentar erro
                            color: Color.fromARGB(255, 27, 115, 255), // Cor da borda
                            width: 1.5, // Largura da borda
                          ),
                        ),
                        focusedErrorBorder: const OutlineInputBorder( // Borda selecionada ao apresentar erro 
                          borderSide: BorderSide( // Estilização da borda selecionada ao apresentar erro
                            color: Color(0xff93B6EE), // Cor da borda
                            width: 1.5, // Largura da borda 
                          ),
                        ),
                      ),
                      validator: (controllerEmail) { // Validação do campo
                        RegExp emailRegex = RegExp(
                          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                        );
                        // Se o campo não estiver nulo ou vazio executa
                        if (controllerEmail == null || controllerEmail.isEmpty) {
                          return 'Por favor, insira um email.'; // Mensagem retornada ao usuário
                        // Se não for o caso anterior executa
                        } else if (!emailRegex.hasMatch(controllerEmail)) {
                          return 'Email inválido.'; // Mensagem retornada ao usuário
                        }
                        return null; // Caso não seja nenhum dos casos, executa
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

                    const SizedBox(height: 10.0), // Espaçamento entre um TextFormField e outro

                    TextFormField( // Campo: senha
                      controller: controllerSenha, // Extrai o texto do campo
                      obscureText: _obscureText, // Visibilidade da senha
                      decoration: InputDecoration(
                        labelText: 'Digite aqui...', // Texto apresentado dentro do campo
                        labelStyle: const TextStyle( // Estilo do texto de exemplo 
                          color: Color(0xff93B6EE), // Cor do texto de exemplo
                        ),
                        enabledBorder: const OutlineInputBorder( // Borda em seu estado natural
                          borderSide: BorderSide( // Estilo da borda natural
                            color: Color(0xff93B6EE), // Cor da borda
                            width: 1.5, // Largura da borda
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder( // Borda selecionada
                          borderSide: BorderSide( // Estilo da borda selecionada
                            color: Color(0xff93B6EE), // Cor da borda
                            width: 1.5, // Largura da borda
                          ),
                        ),
                        border: OutlineInputBorder( // Permite o Arredondamento
                          borderRadius: BorderRadius.circular(30.0), // Arredondando as bordas
                        ),
                        errorBorder: const OutlineInputBorder( // Borda natural ao apresentar erro
                          borderSide: BorderSide( // Estilo da borda ao apresentar erro
                            color: Color.fromARGB(255, 27, 115, 255), // Cor da borda
                            width: 1.5, // Largura da borda
                          ),
                        ),
                        focusedErrorBorder: const OutlineInputBorder( // Borda selecionada ao apresentar erro
                          borderSide: BorderSide( // Estilo da borda selecionada ao apresentar erro
                            color: Color(0xff93B6EE), // Cor da borda
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

                    const SizedBox(height: 30.0), // Espaçamento do entre o TextFormField e o botão

                    SizedBox( // Cria uma área de manipulação
                      width: double.infinity, // Ocupa a largura total do elemento pai
                      child: ElevatedButton( // Cria um botão para exercer funções
                        onPressed: salvar, // Método de salvar
                        style: ElevatedButton.styleFrom( // Estilização do botão
                          backgroundColor: const Color(0xff93B6EE), // Cor do botão
                          padding: const EdgeInsets.symmetric(vertical: 15), // Espaçamento interno
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: const Text(
                          'Entrar', // Texto
                          style: TextStyle( // Permite a estilização da fonte
                            fontSize: 18.0, // Tamanho da fonte
                            fontFamily: 'RedHatDisplay', // Estilo da fonte
                            color: Colors.white, // Cor da fonte
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 50.0), // Espaçamento entre os elementos

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribui os elementos para as extremidades
                      children: <Widget>[ // Permite a construção de vários elementos
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
                          child: RichText(  // Texto sublinhado
                            text: TextSpan( // Comando de texto clicável
                              text: 'Já tem uma conta? ', // Texto
                              style: const TextStyle( // Permite estilizar a fonte
                              color: Color(0xff93B6EE), // Cor da fonte
                              fontFamily: 'RedHatDisplay', // Fonte estilizada
                              fontWeight: FontWeight.bold, // Estilo da fonte
                              fontSize: 16.0, // Tamanho da fonte
                              decoration: TextDecoration.underline, // Sublinha o texto
                            ),
                        
                            recognizer: TapGestureRecognizer() // Ação ao clicar no texto
                              ..onTap = () { // Ação ao clicar
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
                  ]
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}