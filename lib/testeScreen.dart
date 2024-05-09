import 'package:flutter/material.dart';

// Class create to exercise the process of navigating in classes

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
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
              
              Icons.back_hand
              
              )
            )   
          ]),

          Column(
            children: [
              Padding(padding: EdgeInsets.all(25),
              child: Text("Building Screen..."),
              )
            ],
          )
        ],
      ),
    ));
  }
}
