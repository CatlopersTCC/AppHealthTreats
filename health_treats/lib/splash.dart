import 'package:flutter/material.dart';

// Classe que constroe a tela de Splash
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Corpo do aplicativo
      backgroundColor: Color(0XFF93B6EE), // Cor de fundo da tela de splash
      body: Center( // Centraliza a coluna
        child: Column( // Dispõe em colunas os elementos
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza os elementos filhos da coluna
          children: <Widget>[ // Permite a construção de vários widgets
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