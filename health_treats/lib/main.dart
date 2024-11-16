import 'package:flutter/material.dart';
import 'package:health_treats/cadastro.dart';


void main() {
  runApp(const MyApp()); //Trocar para a tela de Splash
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen',
      home: SplashScreen(), // Defina a tela de splash como a tela inicial
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(), // Defina a tela de splash como a tela inicial
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simula um atraso para a tela de splash
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const TelaCadastro()), // Navega para a tela de cadastro
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF93B6EE), // Cor de fundo da tela de splash
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centralizando a coluna e seus filhos
          children: <Widget>[
            Image.asset(
              'assets/img/HealthTreatsLogo.png', // Caminho da Imagem de fundo que ocupará determinado espaço
              fit: BoxFit.cover, // Expande a imagem por todo espaço definido
              width: 150, // Utilizado para usar 100% do tamanho determinado
              height: 150, // Define a altura da imagem
            ),
            Container(
              margin: EdgeInsets.all(50.0), // Definindo a distância entre a animação de carregamento
              child: CircularProgressIndicator( // Criando animação de carregamento
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white), // Cor da animação de carregamento
                strokeWidth: 6.0, // Largura da borda
              ),
            ),
          ],
        ),
      ),
    );
  }
}

