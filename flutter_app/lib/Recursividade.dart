import 'package:flutter/material.dart';

class Recursividade extends StatefulWidget {
  @override
  _RecursividadeState createState() => _RecursividadeState();
}

class _RecursividadeState extends State<Recursividade> {
  int f;

  TextEditingController tec1 = TextEditingController();

  int fatorial(int num){
    if (num == 0)
      return 1;
    return num * fatorial(num - 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              FlatButton(
                  color: Colors.black,
                  onPressed: () {
                    setState(() {
                      f = fatorial(int.parse(tec1.text));
                    });
                  },
                  child: Text(
                    "Fatorial",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: TextField(
                  controller: tec1,

                ),
              ),
              Text(
                f.toString(),
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ));
  }
}
