import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'recovery.dart';
import 'register.dart';
import 'crud.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class YearStadistic extends StatefulWidget {
  final Widget child;
  YearStadistic({Key key, this.child}) : super(key: key);
  _YearStadisticState createState() => _YearStadisticState();
}

class _YearStadisticState extends State<YearStadistic> {
  List<charts.Series> seriesList;
  bool animate = false;

  static List<charts.Series<OrdinalVis, String>> _createSampleData() {
    final data = [
      new OrdinalVis('2017', 5),
      new OrdinalVis('2018', 25),
      new OrdinalVis('2019', 100),
      new OrdinalVis('2020', 75),
    ];

    return [
      new charts.Series<OrdinalVis, String>(
        id: 'Visitas al Año',
        domainFn: (OrdinalVis sales, _) => sales.year,
        measureFn: (OrdinalVis sales, _) => sales.visit,
        data: data,
      )
    ];
  }

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
          child: new charts.BarChart(
            seriesList,
            animate: animate,
            vertical: false,
            barRendererDecorator: new charts.BarLabelDecorator<String>(),
            domainAxis: new charts.OrdinalAxisSpec(
                renderSpec: new charts.NoneRenderSpec()),
          ),
        ),
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

class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}

class OrdinalVis {
  final String year;
  final int visit;

  OrdinalVis(this.year, this.visit);
}