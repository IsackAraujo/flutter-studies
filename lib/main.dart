import 'package:flutter/material.dart';

main (){
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget{

  Widget build(BuildContext context){

    var perguntaSelecionada = 0;
    
    void responder(){
      perguntaSelecionada++;
      print(perguntaSelecionada);
    }

    void Function() functionThatWillReturnAnotherFunction() {
      return () {
        print("Im Printing Something!");
      };
    }

    final perguntas = [
      "Qual é o seu nome?",
      "Qual é o nome de seu Cachorro?"
       ];
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Vamo lá Guerreiro"),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              onPressed: responder,
              child: Text("Resposta 1")
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text("Resposta 2")
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text("Resposta 3")
            )
          ],
        )
      )
    );
  }
}
