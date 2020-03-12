//import 'dart:html';

import 'package:flutter/material.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tractos Aire',
      theme: ThemeData(
  
        primarySwatch: Colors.deepOrange,
      ),
      home: TabbedAppBarSample(),
    );
  }
}

class TabbedAppBarSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            
            title: const Text('Tractos'),
          
            bottom: TabBar(
            

              isScrollable: true,
              tabs: choices.map((Choice choice) {
                return Tab(
                  text: choice.title,
                  icon: Icon(choice.icon),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ChoiceCard(choice: choice),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Registros', icon: Icons.account_balance),
  const Choice(title: 'Nuevo Tracto', icon: Icons.keyboard),
  const Choice(title: 'Nueva Medicion', icon: Icons.navigation),
  //const Choice(title: 'Configuracion', icon: Icons.comment),
  //const Choice(title: 'Condicion', icon: Icons.directions_railway),
  //const Choice(title: 'Registro de faltas', icon: Icons.directions_walk),
];

class ChoiceCard extends StatefulWidget {

  final Choice choice;
  
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  

  @override
  _ChoiceCardState createState() {


    return _ChoiceCardState();
  }
}

class _ChoiceCardState extends State<ChoiceCard> {
  @override
  Widget build(BuildContext context) {

   

    
        return
          Container(
          
        //color: Colors.deepOrange,
        
        child: Container(

        
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              //Flexible(flex: 1, child: Stack()),
            
                RichText(
                  
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(text: 'Tracto No', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ''),
                  ],
                ),
               ),
          
              TextField(
                 cursorColor: Colors.red,
                 cursorRadius: Radius.circular(16.0),
                  cursorWidth: 16.0,
              
              ),
               
              FlatButton(
                
                onPressed: ()=>print(TextField) , 
                child: Text("aceptar")
              ),

              
             //Center(child: TextField()), FlatButton(onPressed: ()=>print("12345") , child: Text("aceptar"))
            ],
          ),




        ),
      );
  

  }
}









