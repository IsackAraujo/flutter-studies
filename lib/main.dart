
import 'package:flutter/material.dart';
import 'package:teste/models/mysql.dart';
import './questao.dart';

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

  var email = '';


    var perguntaSelecionada = 0;

    final perguntas = [
      "Qual é o seu nome?",
      "Qual é o nome de seu Cachorro?"
    ];
    
    void responder(){
      setState(() {
        var aluno = new Student(
          name: "Carl",
          age: 14
        );

      if(perguntaSelecionada == perguntas.length-1){
      aluno.printStudent();
      perguntaSelecionada = 0;
      }else{
      perguntaSelecionada++;
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

    void Function() printOnTap() {
      return () {
        print("Label was tapped");
      };
    }
 
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text("MAIL: ${email}")
            ),
        ),
        body: Column(
          children: [
            Divider(
              height: 30,
              ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: Text(
                "In this example we have two questions, and when you click in some buttom, you change the question, and every time that you achieved the second question, you will come back to the first and create a instance of a class Student and print it on the console.",
                style: TextStyle(
                   fontSize: 12
                ),
                textAlign: TextAlign.center,
                ),
            ),
            Questao(texto: perguntas[perguntaSelecionada]),
            ElevatedButton(
              onPressed: responder,
              child: Text("Resposta 1")
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text("Resposta 2")
            ),
            ElevatedButton(
              onPressed: responder, child: Text("Resposta 3")),
                TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Password",
                      hintText: 'Enter your password',
                      counterText: "Maximum of 30 characters."),
                  autocorrect: true,
                  onTap: printOnTap(),
                ),
            ElevatedButton(
              onPressed: printOnTap(),
               child: Icon(Icons.person)
               ),
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
