import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF93B6EE), // Cor de fundo da tela de splash
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/img/HealthTreatsLogo.png', // Caminho da Imagem de fundo que ocupará determinado espaço
              fit: BoxFit.cover, // Expande a imagem por todo espaço definido
              width: 400.0, // Utilizado para usar 100% do tamanho determinado
              height: 400.0, // Define a altura da imagem
            ),
          ],
        ),
      ),
    );
  }
}