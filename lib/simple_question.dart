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


    _imageURL = "01.png";
    _question = '¿' + motor.actual['texto'] + '?';



    //Map<String, dynamic> diosMio = motor.actual['opciones'];
    var diosMio = motor.actual['opciones'];

    print(diosMio);

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
                  style: Theme.of(context).textTheme.headline4,
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
                            if(_selectedIndex == 0){
                              Future.delayed(
                                Duration(milliseconds: 200),
                                () => Navigator.pushReplacement(
                                  context, 
                                  MaterialPageRoute(
                                    builder: (context) => Result(),
                                  ),
                                )
                              );
                              return;
                            }


                            setState(() {
                              _question = '¿Cualquier otra pregunta?';
                              _dataList = ['Opcion 1', 'Opcion 2', 'Opcion 3'];
                              _selectedIndex = -1;
                              index = -1;
                            });
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