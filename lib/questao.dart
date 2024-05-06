import 'package:flutter/material.dart';

class Questao extends StatelessWidget {

  final String texto;

  Questao({required this.texto});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(this.texto);
  }

}