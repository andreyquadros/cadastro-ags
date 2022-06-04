import 'package:ac_app/Controllers/databasesqlite.dart';
import 'package:ac_app/elemento_padding.dart';
import 'package:flutter/material.dart';
class ElementosCadastroScreen extends StatefulWidget {
  const ElementosCadastroScreen({Key? key}) : super(key: key);

  @override
  State<ElementosCadastroScreen> createState() => _ElementosCadastroScreenState();
}

class _ElementosCadastroScreenState extends State<ElementosCadastroScreen> {

  TextEditingController controlador_endereco = TextEditingController();
  TextEditingController controlador_nome = TextEditingController();
  TextEditingController controlador_moradores = TextEditingController();
  TextEditingController controlador_animais = TextEditingController();
  TextEditingController controlador_vacinados = TextEditingController();

  Future<void> salvarBanco() async {
    String endereco = controlador_endereco.text;
    String nome = controlador_nome.text;
    int moradores = int.parse(controlador_moradores.text);
    int animais = int.parse(controlador_animais.text);
    int vacinados = int.parse(controlador_vacinados.text);
    final database = await DatabaseSQLite().openConnection();
    database.insert('cadastro', {'endereco': endereco, 'nome': nome, 'moradores': moradores, 'animais': animais, 'vacinados': vacinados});
  }

  @override
  void initState(){
    super.initState();
    _database();
  }

  Future<void> _database() async{
    final database = await DatabaseSQLite().openConnection();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
          child: Container(
              width: 300,
              child: Image.asset("images/logo.png")),
        ),
        ElementoPadding(texto: 'Endereço Completo', controlador: controlador_endereco, ),
        ElementoPadding(texto: 'Nome Completo', controlador: controlador_nome),
        ElementoPadding(texto: 'Quantos moradores há na casa?', controlador: controlador_moradores),
        ElementoPadding(texto: 'Quantos animais de estimação há?', controlador: controlador_animais),
        ElementoPadding(texto: 'Quantos vacinados há?', controlador: controlador_vacinados),
        Container(
          width: 330,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton.icon(onPressed: salvarBanco, icon: Icon(Icons.save_alt), label: Text("Salvar")),
          ),
        )
      ],
    );
  }
}
