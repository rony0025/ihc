import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'crud.dart';
import 'generated/l10n.dart';

class Ver extends StatefulWidget {
  @override
  _VerState createState() => _VerState();
}

class _VerState extends State<Ver> {
  bool isRememberMe = false;
  var txtnombre = TextEditingController();
  var txtcategoria = TextEditingController();
  var txtingredientes = TextEditingController();
  var txtpreparacion = TextEditingController();

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
            controller: txtnombre,
            readOnly: true,
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.article_outlined,
                  color: Color(0xff5ac18e),
                ),
                hintText: S.of(context).verreceta,
                hintStyle: TextStyle(
                  color: Colors.black38,
                )),
          ),
        )
      ],
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
            readOnly: true,
            controller: txtcategoria,
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
            readOnly: true,
            controller: txtingredientes,
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
            readOnly: true,
            controller: txtpreparacion,
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

  @override
  Widget build(BuildContext context) {
    txtnombre.text = "Arroz con Pollo";
    txtcategoria.text = "Recetas con Pollo";
    txtingredientes.text =
        "1 1/2 taza de hojas de cilantro\n4 hojas de espinaca\n4 piernas y muslos de pollo, sin piel\nSal y pimienta\n1/4 taza de aceite vegetal\n1 taza de cebolla picada fina\n1 cucharada de ajo picado\n1/2 taza de pasta de ají\n1 taza de cerveza\n2 tazas de caldo de pollo\n1 taza de aceite vegetal\n2 tazas de arroz de grano largo\n1/4 taza de alverjitas (petit pois, chícharos)\n1/4 taza de zanahoria cortada en cubitos\n1/2 pimiento rojo, cortado en\n1 taza de maíz blanco\nSalsa Criolla (ingredientes listados en paso 7)";
    txtpreparacion.text =
        "En una licuadora, licúa cilantro junto con la espinaca y agua como para hacer una pasta homogénea. Reserva.\nSeca el pollo con papel toalla y sazona con sal y pimienta. En una olla se calienta el aceite a fuego medio y se fríe el pollo hasta que esté dorado por ambos lados, unos 7 minutos. Retira de la olla y ponlo en un plato.\nEn la misma olla fríe la cebolla, ajo y la pasta de ají amarillo, revolviendo por 5 minutos. Incorpora el cilantro y espinaca licuado, fríe por 3 minutos. Agrega la cerveza, caldo de pollo, y agrega el pollo en la olla.\nHierve, tapa y baja el fuego. Cuece por 20 minutos. Corrige la sazón con más sal y pimienta si fuera necesario.\nEn otra olla calienta 1 cucharada de aceite. Incorpora el arroz y revuélvelo bien. Agrega las alverjitas, zanahorias, pimiento, maíz, y 3 1/2 tazas del caldo que utilizaste para cocinar el pollo. Deja que rompa hervor, tapa, baja el fuego al mínimo y deja cocer por 20 a 25 minutos. Revuelve con un tenedor y volver a tapar.\nCuando el arroz esté a punto, servir en cuatro platos, poner encima una pierna de pollo y Salsa Criolla al costado. Si quieren también un poco del juguito en el que se coció el pollo.\nPara hacer la Salsa Criolla, corta 1/2 cebolla roja en láminas muy delgadas a lo largo, lava bien y escurre. Mezcla con 1/2 tomate cortado en tiras muy finas, hojas de cilantro, sal, pimienta, jugo de 1 limón y 1 cucharada de aceite de oliva. Si desean le pueden agregar tiritas de ají. ";
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
                      S.of(context).verreceta,
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
                    buildVolverBtn(),
                    SizedBox(
                      height: 20,
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
