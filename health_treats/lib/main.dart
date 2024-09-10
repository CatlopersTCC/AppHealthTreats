import 'package:flutter/material.dart';
import 'package:health_treats/cadastro.dart';


void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(), // Defina a tela de splash como a tela inicial
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(), // Defina a tela de splash como a tela inicial
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simula um atraso para a tela de splash
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => TelaCadastro()), // Navega para a tela de cadastro
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Cor de fundo da tela de splash
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/img/Splash.png', // Caminho da Imagem de fundo que ocupará determinado espaço
              fit: BoxFit.cover, // Expande a imagem por todo espaço definido
              width: double.infinity, // Utilizado para usar 100% do tamanho determinado
              height: 630.0 // Define a altura da imagem
            ),
          ],
        ),
      ),
    );
  }
}

