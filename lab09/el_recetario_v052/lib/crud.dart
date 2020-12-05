import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'crear.dart';
import 'ver.dart';
import 'modificar.dart';
import 'borrar.dart';

class CRUD extends StatefulWidget {
  @override
  _CRUDState createState() => _CRUDState();
}

class _CRUDState extends State<CRUD> {
  Widget buildCrearBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => {
          print("Crear Presionado"),
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Crear(),
          ))
        },
        padding: EdgeInsets.all(4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white,
        child: Text(
          'INSERTAR RECETA',
          style: TextStyle(
            color: Color(0xff5ac18e),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildlistRecipes() {
    return Table(
      children: <TableRow>[
        TableRow(children: <Widget>[
          Text('\n\nArroz Con Pollo'),
          buildVerBtn(),
          buildModificarBtn(),
          buildBorrarBtn(),
        ],),
        TableRow(children: <Widget>[
          Text('\n\nCeviche'),
          buildVerBtn(),
          buildModificarBtn(),
          buildBorrarBtn(),
        ],
        ),
      ],
    );
  }

  Widget buildVerBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => {
          print("Ver Presionado"),
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Ver(),
          ))
        },
        padding: EdgeInsets.all(4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white,
        child: Text(
          'VER',
          style: TextStyle(
            color: Color(0xff5ac18e),
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildModificarBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => {
          print("Modificar Presionado"),
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Modificar(),
          ))
        },
        padding: EdgeInsets.all(4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white,
        child: Text(
          'MODIFICAR',
          style: TextStyle(
            color: Color(0xff5ac18e),
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildBorrarBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => {
          print("Borrar Presionado"),
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Borrar(),
          ))
        },
        padding: EdgeInsets.all(4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white,
        child: Text(
          'BORRAR',
          style: TextStyle(
            color: Color(0xff5ac18e),
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
            child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x665ac18e),
                      Color(0x995ac18e),
                      Color(0xcc5ac18e),
                      Color(0xff5ac18e),
                    ]),
              ),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Lista Personal de Recetas',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    buildCrearBtn(),
                    buildlistRecipes(),
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
