import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ElementoPadding extends StatefulWidget {
  const ElementoPadding({Key? key, required this.texto, required this.controlador}) : super(key: key);

  final String texto;
  final TextEditingController controlador;


  @override
  State<ElementoPadding> createState() => _ElementoPaddingState();
}

class _ElementoPaddingState extends State<ElementoPadding> {

  @override
  Widget build(BuildContext context) {
    print(widget.controlador);
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 5, 32, 5),
      child: TextFormField(
        controller: widget.controlador,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          fillColor: Colors.blue,
          focusColor: Colors.blue,
          hoverColor: Colors.blue,
          border: OutlineInputBorder(),
          hintText: widget.texto,
        ),
      ),
    );
  }
}
