import 'package:flutter/material.dart';

class Salgados extends StatelessWidget {
  const Salgados({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salgados || Page',
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