import 'package:flutter/material.dart';
import 'package:piranhias/simple_question.dart';

class  HomePage extends StatefulWidget{
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("¿Qué tiene tu planta?", style: Theme.of(context).textTheme.headline4,),
            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: ElevatedButton(onPressed: _startProcess, 
                child: Text("Empezar"),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _startProcess(){
    Future.delayed(
      Duration(milliseconds: 200),
      () => Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
          builder: (context) => SimpleQuestion(
            question: '¿Cambiaste la tierra de tu planta?', 
            dataList: ['Si', 'No'],
            imageURL: '01.png',
          )
        ),
      )
    );
  }
}