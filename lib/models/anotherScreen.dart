import 'package:flutter/material.dart';

class BotaoAnother extends StatelessWidget {

  final String texto;

  BotaoAnother(this.texto);

  @override

  Widget build(BuildContext context) {

    return Text(
      "Another ${texto}",
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
