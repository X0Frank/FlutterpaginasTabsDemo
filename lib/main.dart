//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tractos Aire',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
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
  const Choice(title: 'Configuracion', icon: Icons.comment),
  const Choice(title: 'Condicion', icon: Icons.directions_railway),
  const Choice(title: 'Registro de faltas', icon: Icons.directions_walk),
];

class ChoiceCard extends StatefulWidget {

  final Choice choice;
  
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  

  @override
  _ChoiceCardState createState() => _ChoiceCardState();
}

class _ChoiceCardState extends State<ChoiceCard> {
  @override
  Widget build(BuildContext context) {
      final wordPair = WordPair.random();
      

    return Center(child: Column(children: [
      TextField(), FlatButton(onPressed: ()=>print("12345") , child: Text("aceptar"))


    ]
    
    
    
    ));

  }
}






