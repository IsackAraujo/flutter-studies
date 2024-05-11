import 'package:flutter/material.dart';

// Class create to exercise the process of navigating in classes

var a = 1;

class TestScreen extends StatelessWidget {
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

              /// Estudando o motivo pelo o qual essa parcela de codigo abaixo 
              /// está dando erro na aplicação...
              ///

              /*
              Expanded(
                child: TextField(
                  obscureText: true,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    hintText: "Enter your user",
                  ),
                ),) */

                

                Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              ElevatedButton(
                child: Text("Não tenho uma conta"),
                onPressed: null,
              ),
              ElevatedButton(
                child: Text("Entrar"),
                onPressed: null,
              ),
            ],
          )
            ],
          ),

          SizedBox(
            width: 20,
            height: 50,
          ),

          


        ],
      ),
    ));
  }
}
