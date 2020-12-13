import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'recovery.dart';
import 'register.dart';
import 'crud.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Stadistic extends StatefulWidget {
  final Widget child;
  Stadistic({Key key, this.child}) : super(key: key);
  _StadisticState createState() => _StadisticState();
}

class _StadisticState extends State<Stadistic> {
  bool isRememberMe = false;

  List<charts.Series<Task, String>> _seriesPieData;

  _generateData() {
    var piedata = [
      new Task('Me Gusta', 39.3, Color(0xff3366cc)),
      new Task('No me Gusta', 51.5, Color(0xff990099)),
      new Task('Indiferente', 9.2, Color(0xff109618)),
    ];

    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Air Pollution',
        data: piedata,
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );
  }

  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesPieData = List<charts.Series<Task, String>>();
    _generateData();
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Me gusta: 39%',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
        ),
        Text(
          'No me gusta: 52%',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
        ),
        Text(
          'Indiferente: 9%',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
        ),
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Grafico:',
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
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 300,
          child: charts.PieChart(_seriesPieData,
              animate: true,
              animationDuration: Duration(seconds: 5),
              behaviors: [
                new charts.DatumLegend(
                  outsideJustification: charts.OutsideJustification.endDrawArea,
                  horizontalFirst: false,
                  desiredMaxRows: 2,
                  cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                  entryTextStyle: charts.TextStyleSpec(
                      color: charts.MaterialPalette.purple.shadeDefault,
                      fontFamily: 'Georgia',
                      fontSize: 11),
                )
              ],
              defaultRenderer: new charts.ArcRendererConfig(
                  arcWidth: 100,
                  arcRendererDecorators: [
                    new charts.ArcLabelDecorator(
                        labelPosition: charts.ArcLabelPosition.inside)
                  ])),
        )
      ],
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
                          'Estadisticas Generales',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        buildEmail(),
                        SizedBox(
                          height: 20,
                        ),
                        buildPassword(),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}