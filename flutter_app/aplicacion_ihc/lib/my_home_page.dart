import 'package:aplicacion_ihc/second_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController aTextController;
  TextEditingController bTextController;
  TextEditingController cTextController;
  TextEditingController dTextController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: "Nombres Completos"),
                controller: aTextController,
              ),
              TextField(
                decoration: InputDecoration(labelText: "dia"),
                controller: bTextController,
              ),
              TextField(
                decoration: InputDecoration(labelText: "mes"),
                controller: cTextController,
              ),
              TextField(
                decoration: InputDecoration(labelText: "año"),
                controller: dTextController,
              ),
              RaisedButton(
                child: Text("Mostrar segunda pantalla"),
                onPressed: () {
                  calcular(context);
                },
              ),
            ],
          ),
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void calcular(BuildContext context) {
    final variA = MaterialPageRoute(builder: (BuildContext context) {
      return SecondPage(
        d1: aTextController.text,
        d2: bTextController.text,
        d3: cTextController.text,
        d4: dTextController.text,
      );
    });
    Navigator.of(context).push(variA);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    aTextController = TextEditingController();
    bTextController = TextEditingController();
    cTextController = TextEditingController();
    dTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    aTextController.dispose();
    bTextController.dispose();
    cTextController.dispose();
    dTextController.dispose();
  }
}