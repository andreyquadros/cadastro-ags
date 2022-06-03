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
            child: ElevatedButton.icon(onPressed: null, icon: Icon(Icons.save_alt), label: Text("Salvar")),
          ),
        )
      ],
    );
  }
}
