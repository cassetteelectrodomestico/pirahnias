import 'package:flutter/material.dart';
import 'package:piranhias/home_page.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    Future.delayed(
      Duration(milliseconds: 2500), 
      () => Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
          builder: (context) => HomePage(title: 'Inicio')
        ),
      ),
    );
    super.initState();
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Spacer(),
            Center(
              child: FractionallySizedBox(
                widthFactor: .8,
                child: Image(
                  image: AssetImage('assets/pirahna.png'),
                ),
              ),
            ),
            Text(
              'Pirahnias',
              style: Theme.of(context).textTheme.headline4,
            ),
            Spacer(),
            CircularProgressIndicator(),
            Spacer(), 
          ],
        )
      ),
    );
  }
}