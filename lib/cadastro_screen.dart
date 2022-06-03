import 'dart:ffi';

import 'package:ac_app/elementos_cadastro_screen.dart';
import 'package:flutter/material.dart';

class CadastroScreen extends StatefulWidget {
  const CadastroScreen({Key? key}) : super(key: key);

  @override
  State<CadastroScreen> createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tela de Cadastro Agentes"),
      ),
      body: SingleChildScrollView(
        child: ElementosCadastroScreen(),
      ),
    );
  }
}
