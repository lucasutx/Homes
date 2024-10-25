import 'package:flutter/material.dart';
import 'package:flutter_application_1/funcionamento.dart';
import 'package:flutter_application_1/cardapio.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/fotos.dart';
import 'package:flutter_application_1/orcamento.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: '/',
      routes: {
        '/':(context) => home(),
        '/funcionamento':(context) => funcionamento(),
        '/cardapio':(context) => cardapio(),
        '/fotos':(context) => fotos(),
        '/orcamento':(context) => orcamento(),
      },
    );
  }
}
