import 'package:flutter/material.dart';

class Questao extends StatelessWidget {

  final String texto;

  Questao({required this.texto});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(40),
          child: Text(
            this.texto,
            style: TextStyle(
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
            ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(15),
          child: Text(
            'Options',
            style: TextStyle(
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
            ),
        ),

      ],
    );
    
  }

}