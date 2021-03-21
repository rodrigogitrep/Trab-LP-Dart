import 'package:flutter/material.dart';
import 'package:flutter_app/InstrucoesControle.dart';
import 'package:flutter_app/Recursividade.dart';
import 'package:flutter_app/TiposDados.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trabalho de LP"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => TiposDados()));
                  },
                  color: Colors.blue,
                  child: Text("Tipos de dados, aloc. memoria", style: TextStyle(color: Colors.white, fontSize: 18),)
              ), SizedBox(
                height: 20,
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => InstrucoesControle()));
                  },
                  color: Colors.blue,
                  child: Text("Instruções de controle", style: TextStyle(color: Colors.white, fontSize: 18),)
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Recursividade()));
                  },
                  color: Colors.blue,
                  child: Text("Recursividade", style: TextStyle(color: Colors.white, fontSize: 18),)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
