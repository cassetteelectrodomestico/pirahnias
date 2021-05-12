import 'package:flutter/material.dart';
import 'package:piranhias/home_page.dart';

class Result extends StatefulWidget {
  Result({Key key, @required this.diagnostico, @required this.causas, @required this.recomendaciones}) : super(key: key);

  final String diagnostico;
  final String causas;
  final String recomendaciones;

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {

  String _diagnostico;
  String _causas;
  String _recomendaciones;


  @override
  void initState() {
    super.initState();
    _diagnostico = widget.diagnostico;
    _causas = widget.causas;
    _recomendaciones = widget.recomendaciones;
  }

  void goHome() {
    Future.delayed(
        Duration(milliseconds: 200),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => HomePage(title: 'Inicio')),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home, color: Colors.white),
            onPressed: goHome,
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: Center(
                  child: Text(
                    'Diagnóstico:',
                    style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.center,
                  )
                ),
              )
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                ),
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'Tu planta sufre porque: ' + _diagnostico,
                  style: Theme.of(context).textTheme.headline6,
                ),
              )
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Image(
                  image: AssetImage("assets/prueba1.jpg"),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                ),
                padding: EdgeInsets.all(5),
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(0.0),
                  children: <Widget>[
                    Text(
                      'Causas:',
                      style: Theme.of(context).textTheme.headline5,
                      
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        //'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu elit efficitur lorem tincidunt varius id sit amet velit. Nullam a metus ut arcu malesuada molestie. Vivamus posuere vel sapien quis ullamcorper. Quisque consequat ipsum sed molestie vulputate. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
                        _causas,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    Text(
                      'Recomendaciones:',
                      style: Theme.of(context).textTheme.headline5,
                      
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        //'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu elit efficitur lorem tincidunt varius id sit amet velit. Nullam a metus ut arcu malesuada molestie. Vivamus posuere vel sapien quis ullamcorper. Quisque consequat ipsum sed molestie vulputate. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
                        _recomendaciones,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ],
                )
              ),
            )
          ],
        ),
        margin: EdgeInsets.all(30),
      ),
    );
  }
}