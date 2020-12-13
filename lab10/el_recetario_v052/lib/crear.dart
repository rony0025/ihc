import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'generated/l10n.dart';

class Crear extends StatefulWidget {
  @override
  _CrearState createState() => _CrearState();
}

class _CrearState extends State<Crear> {
  bool isRememberMe = false;

  Widget buildNombre() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          S.of(context).nombredereceta,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.article_outlined,
                  color: Color(0xff5ac18e),
                ),
                hintText: S.of(context).nombredereceta,
                hintStyle: TextStyle(
                  color: Colors.black38,
                )),
          ),
        )
      ],
    );
  }

  Widget buildVolverBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => {
          print("Volver Presionado"),
          Navigator.pop(context)
        },
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white,
        child: Text(
          S.of(context).botonvolver,
          style: TextStyle(
            color: Color(0xff5ac18e),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildCategoria() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          S.of(context).categoria,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.article_outlined,
                  color: Color(0xff5ac18e),
                ),
                hintText: S.of(context).categoria,
                hintStyle: TextStyle(
                  color: Colors.black38,
                )),
          ),
        )
      ],
    );
  }

  Widget buildIngredientes() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          S.of(context).ingredientes,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 260,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.black87),
            maxLines: 8,
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.article,
                  color: Color(0xff5ac18e),
                ),
                hintStyle: TextStyle(
                  color: Colors.black38,
                )),
          ),
        )
      ],
    );
  }

  Widget buildPreparacion() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          S.of(context).preparacion,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 260,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.black87),
            maxLines: 8,
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.article,
                  color: Color(0xff5ac18e),
                ),
                hintStyle: TextStyle(
                  color: Colors.black38,
                )),
          ),
        )
      ],
    );
  }

  Widget buildGuardarBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => print('Guardar presionado'),
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white,
        child: Text(
          S.of(context).botonregistrarse,
          style: TextStyle(
            color: Color(0xff5ac18e),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
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
                          S.of(context).insertarreceta,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        buildNombre(),
                        SizedBox(
                          height: 20,
                        ),
                        buildCategoria(),
                        SizedBox(
                          height: 20,
                        ),
                        buildIngredientes(),
                        SizedBox(
                          height: 20,
                        ),
                        buildPreparacion(),
                        SizedBox(
                          height: 20,
                        ),
                        buildGuardarBtn(),
                        buildVolverBtn(),
                        SizedBox(
                          height: 10,
                        ),
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