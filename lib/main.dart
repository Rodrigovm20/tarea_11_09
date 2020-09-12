import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conversor de metros a yardas',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Conversor(title: 'Convertidor de metros a yardas'),
    );
  }
}

class Conversor extends StatefulWidget {
  Conversor({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ConversorState createState() => _ConversorState();
}

class _ConversorState extends State<Conversor> {
  var _output = 'Inicial';
  final inputController = TextEditingController();

  void _calculadist() {
    setState(() {
      double metros = double.parse(inputController.text);
      double yardas = (metros * 1.904);
      _output = "$yardas";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: inputController,
              ),
              RaisedButton(
                onPressed: () {
                  _calculadist();
                  Text('Convertir');
                  
                },
              ),
              Text(_output),
              new Container(
                child: new TextField(
                style: new TextStyle(
              fontSize: 30.0,
              color: Colors.black
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}