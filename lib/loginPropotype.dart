import 'package:flutter/material.dart';

// Class create to exercise the process of navigating in classes

var a = 1;
List incrementation = [1, 2, 4];

void incrementInList(List listToIncrement){
  List list = listToIncrement;
  list.add(1);
  
}

class TestScreen extends StatefulWidget {

  String? nome;

  @override
  TestScreen(this.nome);

  @override
  State<TestScreen> createState() => _TestScreenState(this.nome);
}

class _TestScreenState extends State<TestScreen> {

  String? nome;

  _TestScreenState(this.nome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ 
          Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
            Container(
              padding: EdgeInsets.all(25),
               child: Text("Olá ${nome}!",
               style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
               ),
               )
               ),

            Container(
              padding: EdgeInsets.all(25),
              child: Icon(
              
              Icons.info
              
              )
            ),
               
          ]

          ),

          Column(
            children: [
              Container(
                child: Padding(padding: EdgeInsets.all(25),
                child: Text("Seja bem-vindo(a), ${nome}",
                style: TextStyle(
                  fontSize: 20,
                ),),
                ),
              ),


              Container(
                margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Usuário',
                    ),
                  ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(40, 10, 40, 40),
                  child: TextField(
                    decoration: InputDecoration(
                      
                      hintText: 'Senha'
                    ),
                
                  ),
              ),

                Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              ElevatedButton(
                child: Text("Não tenho uma conta"),
                onPressed: () {
                  Navigator.pop(context);
                }
              ),
              ElevatedButton(
                child: Text("Entrar"),
                onPressed: (){
                  setState(() { // SetState need to be used in the variable that is being incremented
                  nome;
                  incrementInList(incrementation); // Need to use this () before call the function
                  });
                } 
              ),
              ElevatedButton(
                child: Text("Print"),
                onPressed: (){
                  print('Printing name: ${this.nome}');
                } 
              )
            ],
          )
            ],
          ),

          Container(
            padding: EdgeInsets.all(30),
            child: Text(
              'Times that "Entrar" was pressed: ${incrementation.length}',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          )

          


        ],
      ),
    ));
  }
}


