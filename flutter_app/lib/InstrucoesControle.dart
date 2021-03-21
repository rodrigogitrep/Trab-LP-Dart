import 'package:flutter/material.dart';

class InstrucoesControle extends StatelessWidget {

  funcaoIfElse(){
    int x = 1;
    if(x == 2){
      x = 2;
      print("errado");
    }else if(x == 3)
      print("errado novamente");
    else print("certo!");
  }

  funcaoDoWhile(){
    int x = 1;
    do{
      x++;
    }while(x < 5);
    print("saiu do while");
  }

  funcaoDoFor(){
    int x = 1;
    for(int i = 0; i < 5; i++){
      print("Seu index ->$i"); // uso do $ para mostrar variaveis
    }
  }

  funcaoDoSwitch(){
    int x = 1;
    switch(x){
      case 1:
        print("numero 1");
      break;

      case 2:
        print("numero 2");
      break;

      case 3:
        print("numero 3");
      break;

      case 4:
        print("numero 4");
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent, width: 5)
              ),
              child: Text("Principais instruções de controle", style: TextStyle(fontSize: 20),),
            ),
            FlatButton(
              color: Colors.red,
                onPressed: (){
                  funcaoIfElse();
                },
                child: Text("IF, ELSE, ELSE IF", style: TextStyle(color: Colors.white),)
            ),
            FlatButton(
                color: Colors.red,
                onPressed: (){
                  funcaoDoWhile();
                },
                child: Text("DO WHILE", style: TextStyle(color: Colors.white))
            ),
            FlatButton(
                color: Colors.red,
                onPressed: (){
                  funcaoDoFor();
                },
                child: Text("FOR", style: TextStyle(color: Colors.white))
            ),
            FlatButton(
                color: Colors.red,
                onPressed: (){
                  funcaoDoSwitch();
                },
                child: Text("SWITCH", style: TextStyle(color: Colors.white))
            )
          ],
        )
      ),
    );
  }
}