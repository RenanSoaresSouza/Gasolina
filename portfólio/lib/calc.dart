import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trabalho_mauro/login_form.dart';
import 'package:trabalho_mauro/user_form.dart';
class UserDados {
  var alcool = 0;
  var gasolina = 0;

  UserDados(this.alcool,this.gasolina);

}


class Calc extends StatelessWidget {
  const Calc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(78, 0, 180, 1),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [ SizedBox(child: Image.asset('lib/assets/posto-de-gasolina.png')),
Padding(
  padding: const EdgeInsets.all(10.0),
  child: Text('Alcool ou Gasolina',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(255, 255, 255,1)),),
),
          Center(child:SizedBox(height: 350.0,width:1000,
            child: Column(
              children: [
                 SizedBox(height: 160,width: 500,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                         Positioned(
                          right:1000.0,
                          child: UserForm()),                         
                    ]),
                  ),             
              ],
            ),
          )),
        ],
      ) ,
    );
  }
}