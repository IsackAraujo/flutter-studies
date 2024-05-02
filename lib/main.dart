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
            child: Text("Vamo lá Guerreiro")
            ),
        ),
        body: Column(
          children: [
            Divider(
              height: 30,
              ),
            Center(
              child: Text("In this example we have two questions, and when you click in some buttom, you change the question, and every time that you achieved the second question, you will come back to the first and create a instance of a class Student and print it on the console."),),
            Divider(
              height: 30,
               color: Colors.blue,
               ),
            Text(perguntas[perguntaSelecionada]),
            Divider(
              height: 30,
               color: Colors.blue
               ),
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
