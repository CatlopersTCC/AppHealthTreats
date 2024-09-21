import 'package:flutter/material.dart';

class ComentariosApp extends StatelessWidget {
  const ComentariosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comentários || Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Olá, Mundo!',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}