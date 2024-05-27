import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'user_form.dart';
import 'calc.dart';
class CacPage extends StatefulWidget {
  final String resul;
  const CacPage(this.resul,{super.key});

  @override
  State<CacPage> createState() => _CacPageState(resul);
}

class _CacPageState extends State<CacPage> {
  final String res;
  _CacPageState(this.res);

void tela (){
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Calc()));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Color.fromRGBO(78, 0, 180, 1),
      body:Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset('lib/assets/posto-de-gasolina.png'),Padding(
  padding: const EdgeInsets.all(15.0),
  child: Text('Alcool ou Gasolina',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(255, 255, 255,1)),),
),
            Container(width: 400,height: 200,
              decoration: BoxDecoration(
                color: Color.fromRGBO(209, 173, 255, 1),
                borderRadius: BorderRadius.circular(10.0)

              ),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                Text('Compensa ${this.res}',style: TextStyle(
                  color: Color.fromRGBO(117, 11, 255, 1),fontWeight: FontWeight.bold,fontSize: 24
                ),),Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),color: Color.fromRGBO(111, 0, 255, 1)
                ),width: 300,child: TextButton(onPressed: tela, child: Text('Calcular Novamente',style: TextStyle(color:Color.fromRGBO(255, 255, 255, 1),fontWeight: FontWeight.bold),)))
              ],),
            ),
          ],
        ),
      )
    );
  }
}