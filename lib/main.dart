import 'package:flutter/material.dart';

main (){
  runApp(new PerguntaApp());
}

class Student{

  String? name;
  int? age;

  Student({this.name, this.age});

  printStudent(){
    print("Printing a studend in the console!!! Name: ${this.name}, Age: ${this.age}");
  }
}
class PerguntaAppState extends State<PerguntaApp> {

    var perguntaSelecionada = 0;
    
    void responder(){
      setState(() {
        var aluno = new Student(
          name: "Carl",
          age: 14
        );
      if(perguntaSelecionada<2 && perguntaSelecionada!= 1){
      perguntaSelecionada++;
      }else{
        aluno.printStudent();
        null;
      }
      });
      print(perguntaSelecionada);
    }

      Widget build(BuildContext context){

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
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text("If nothing changed, create a Student and print in the console")
            )
          ],
        )
      )
    );
  }

}

class PerguntaApp extends StatefulWidget {

  PerguntaAppState createState() {
    return PerguntaAppState(); 
  }

}
