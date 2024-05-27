
import 'CalcPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_mauro/login_form.dart';

class UserDados{
  var alcool;
  var gasolina;

  UserDados(this.alcool,this.gasolina);
}

class UserForm extends StatefulWidget {
  UserForm({super.key});

  

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  TextEditingController controllerAlcool = TextEditingController();
  TextEditingController controllerGas = TextEditingController();

  void save() {
    String result = 'null';
    //alcool % gasolina < 0,7
    if ((double.parse(controllerGas.text)*0.7) > double.parse(controllerAlcool.text)) {
      String result = 'O Alcool';
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => CacPage(result) ));
    }
    else {
      String result = 'A Gasolina';
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => CacPage(result) ));
    }


  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:120,
          child: Center(
            child:Row(children: [SizedBox(height: 500.0,width: 200.0,
                              child: Column(
                              children: [
                                    SizedBox(height:50,
                                      child: Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                                        child: Text('ALCOOL',style: TextStyle(
                                          fontFamily: 'Bebas-Regular.ttf',
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 255, 255, 255) 
                                                      )),
                                      ),
                                                      ),
                                    ),             
                                   SizedBox(height: 50,
                                     child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                                        child: (Text('GASOLINA',style: TextStyle(
                                          fontFamily: 'Bebas-Regular.ttf',
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 255, 255, 255) 
                                                      ))),
                                      ),
                                                     ),
                                   ),
                              ],
                                      ),
                            ),
                Column(
                  children: [
                    FieldForm(
                    label: '00.0', 
                    isPassword: false, 
                    controller: controllerAlcool
                    ),
                    FieldForm(
                    label: '00.0', 
                    isPassword: false, 
                    controller: controllerGas
                    
                    ),
                  ],
                ),
            ],)
          ),
        ),
                  Positioned(
              left: 100,
              child: SizedBox(
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(60.0),color: Color.fromRGBO(255, 255, 255,1)),width: 300,height: 40,
                  child: TextButton(onPressed:save,
                    child:Text('CALCULAR',
                    style: TextStyle(color: Color.fromRGBO(91, 27, 175, 0.753),
                fontWeight: FontWeight.bold ),))
                             ),
                                                   ),
                           ),],
    );
  }
}