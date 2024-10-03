import 'package:flutter/material.dart';
import 'package:health_treats/menu.dart';

class ComentariosApp extends StatelessWidget {
  const ComentariosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health Treats | Comentários ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Comentarios(),
    );
  }
}

class Comentarios extends StatelessWidget {
  const Comentarios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color:  Color(0xFF353535),
          ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MenuApp(),
              )
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MenuApp(),
                ),
              );
            },
          )
        ],
      ),
      body: const Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
      )
    );
  }
}