import 'package:flutter/material.dart';

class MenuApp extends StatelessWidget {
  const MenuApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Treats || Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MenuInicio(),
    );
  }
}

class MenuInicio extends StatefulWidget{
  const MenuInicio({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MenuInicio createState() => _MenuInicio();
}

class _MenuInicio extends State<MenuInicio>{
  TextEditingController _searchController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Pesuisar',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              onChanged: (value) {
                // Lógica de pesquisa pode ser adicionada aqui
                print('Texto digitado: $value');
              },
            ),
            
            //COMEÇA OS NOVOS CÓDIGOS A PARTIR DAQUI

            const SizedBox(height: 16.0),
            
            //TESTE DE CÓDIGO (SUBSTITUIR DEPOIS)
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Nome de usuário',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000000),
                    ),
                  ),


                ]
              ),
            )
          ],
        ),
      ),
    );
    
  }
}