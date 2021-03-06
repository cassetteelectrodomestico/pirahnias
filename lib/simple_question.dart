import 'package:flutter/material.dart';
import 'package:piranhias/create_material_color.dart';
import 'package:piranhias/home_page.dart';
import 'package:piranhias/result.dart';
import 'package:piranhias/datos.dart';

class SimpleQuestion extends StatefulWidget{
  SimpleQuestion({Key key,}) : super(key: key);

  /*final String question;
  final List<String> dataList;
  final String imageURL;*/

  @override
  _SimpleQuestionState createState() => _SimpleQuestionState();
}

class _SimpleQuestionState extends State<SimpleQuestion>{
  
  String _question;
  List<String> _dataList;
  String _imageURL;
  int _selectedIndex = -1;

  Motor motor;

  @override
  void initState(){
    super.initState();
    /*_question = widget.question;
    _dataList = widget.dataList;
    _imageURL = widget.imageURL;*/
    motor = Motor();
    if(motor.actual.containsKey('imageURL')){
       _imageURL = motor.actual['imageURL'];
    }else{
      _imageURL = "01.png";
    }
    print( motor.actual);
    _question = '¿' + motor.actual['texto'] + '?';

    //Map<String, dynamic> diosMio = motor.actual['opciones'];
    var diosMio = motor.actual['opciones'];

    _dataList = [];

    for(int i = 0; i < diosMio.length; i++){
      _dataList.add(diosMio[i]['res']);
    }

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuestionario'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white
            ), 
            onPressed: (){
              Future.delayed(
                Duration(milliseconds: 200),
                () => Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => HomePage(title: 'Inicio')
                  ),
                )
              );
            }
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: FractionallySizedBox(
                widthFactor: 1,
                child: Image(
                  image: AssetImage('assets/' + _imageURL),
                ),
              ),
            ),
            Expanded(
              flex : 2,
              child: Container(
                child:Text(
                  _question,
                  style: Theme.of(context).textTheme.headline5,
                ),
                margin: EdgeInsets.all(5),
              )
            ),
            Expanded(
              flex : 4,
              child: ListView.builder(
                itemCount: _dataList.length,
                itemBuilder: (context, index){
                  return AnimatedContainer(
                    curve: Curves.easeOut,
                    duration: Duration(milliseconds: 500),
                    height: MediaQuery.of(context).size.height * 0.08,
                    color: _selectedIndex == index ? Colors.green : createMaterialColor(Color(0x30715E4E)),
                    margin: EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      title: Text(_dataList.elementAt(index)),
                      onTap: () => setState(() {
                        _selectedIndex = index;
                        buildShowDialog(context);
                        Future.delayed(
                          Duration(milliseconds: 600),
                          () => Navigator.of(context).pop()
                        ).then( 
                          (index) {
                            motor.obtenerNuevoAcual(_dataList.elementAt(_selectedIndex));
                            if(motor.queEs() == 'respuesta'){
                              String diagnostico, causas = '', recomendaciones,imageURL;
                              diagnostico = motor.actual['texto'];
                              imageURL = motor.actual['imageURL'];
                              var listCausas = motor.historial;

                              for(int i = 0; i < listCausas.length; i++){
                                causas += '-' + listCausas[i] + '\n';
                              }

                              recomendaciones = motor.actual['recomendacion'];

                              Future.delayed(
                                Duration(milliseconds: 200),
                                () => Navigator.pushReplacement(
                                  context, 
                                  MaterialPageRoute(
                                    builder: (context) => Result(
                                      diagnostico: diagnostico,
                                      causas: causas,
                                      recomendaciones: recomendaciones,
                                      imageURL: imageURL,
                                    ),
                                  ),
                                )
                              );
                              return;
                            }
                            else{
                              setState(() {
                                bool petateo = _dataList.length > 2;
                                if(petateo)
                                  motor.actual = motor.actual['opciones'][0];
                                _question = '¿' + motor.actual['texto'] + '?';
                                _imageURL = motor.actual['imageURL'];
                                //Map<String, dynamic> diosMio = motor.actual['opciones'];
                                var diosMio = motor.actual['opciones'];
                                _dataList = [];
                                for(int i = 0; i < diosMio.length; i++){
                                  _dataList.add(diosMio[i]['res']);
                                }

                                /*_question = '¿Cualquier otra pregunta?';
                                _dataList = ['Opcion 1', 'Opcion 2', 'Opcion 3'];*/
                                _selectedIndex = -1;
                                index = -1;

                              });
                            }
                            
                          }
                        );
                      }),
                    )
                  );
                },
              ),
            ),
          ],
        ),
        margin: EdgeInsets.all(30),
      )
    );
  }

  buildShowDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    );
  }
}