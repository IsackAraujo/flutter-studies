import 'package:flutter/material.dart';

// Class create to exercise the process of navigating in classes

var a = 1;
List incrementation = [1, 2, 4];

void incrementInList(List listToIncrement){
  List list = listToIncrement;
  list.add(1);
  
}

class TestScreen extends StatefulWidget {
  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
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
               child: Text("Olá Flutter!",
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
                child: Text("Seja bem-vindo(a)",
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
                onPressed: null,
              ),
              ElevatedButton(
                child: Text("Entrar"),
                onPressed: (){
                  setState(() { // SetState need to be used in the variable that is being incremented
                  incrementInList(incrementation); // Need to use this () before call the function
                  });
                } 
              ),
            ],
          )
            ],
          ),

          Container(
            padding: EdgeInsets.all(30),
            child: Text(
              'Quantas vezes foi clicado em Entrar =>  ${incrementation.length}',
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


