import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<charts.Series<Pollution, String>> _seriesData;
  List<charts.Series<Sales, int>> _seriesLineData;

  _generateData() {
    var data1 = [
      new Pollution(1980, 'Peru', 30),
      new Pollution(1980, 'Chile', 40),
      new Pollution(1980, 'Ecuador', 10),
    ];
    var data2 = [
      new Pollution(1985, 'Peru', 100),
      new Pollution(1980, 'Chile', 150),
      new Pollution(1985, 'Ecuador', 80),
    ];
    var data3 = [
      new Pollution(1985, 'Peru', 200),
      new Pollution(1980, 'Chile', 300),
      new Pollution(1985, 'Ecuador', 180),
    ];

    var linesalesdata = [
      new Sales(0, 45),
      new Sales(1, 56),
      new Sales(2, 55),
      new Sales(3, 60),
      new Sales(4, 61),
      new Sales(5, 70),
    ];
    var linesalesdata1 = [
      new Sales(0, 35),
      new Sales(1, 46),
      new Sales(2, 45),
      new Sales(3, 50),
      new Sales(4, 51),
      new Sales(5, 60),
    ];

    var linesalesdata2 = [
      new Sales(0, 20),
      new Sales(1, 24),
      new Sales(2, 25),
      new Sales(3, 40),
      new Sales(4, 45),
      new Sales(5, 60),
    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2017',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff990099)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2018',
        data: data2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff109618)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2019',
        data: data3,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xffff9900)),
      ),
    );

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: 'Air Pollution',
        data: linesalesdata,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
        id: 'Air Pollution',
        data: linesalesdata1,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
        id: 'Air Pollution',
        data: linesalesdata2,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesData = List<charts.Series<Pollution, String>>();
    _seriesLineData = List<charts.Series<Sales, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0x995ac18e),
            //backgroundColor: Color(0xff308e1c),
            bottom: TabBar(
              indicatorColor: Color(0xff9962D0),
              tabs: [
                Tab(
                  icon: Icon(FontAwesomeIcons.solidChartBar),
                ),
                Tab(icon: Icon(FontAwesomeIcons.chartLine)),
              ],
            ),
            title: Text('Estadisticas de la Aplicacion'),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Preferencias de Adolescentes - Jovenes - Adultos que usan la aplicacion',
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: charts.BarChart(
                            _seriesData,
                            animate: true,
                            barGroupingType: charts.BarGroupingType.grouped,
                            //behaviors: [new charts.SeriesLegend()],
                            animationDuration: Duration(seconds: 5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Aumento de Usuarios en los años Adolescentes - Jovenes - Adultos',
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: charts.LineChart(_seriesLineData,
                              defaultRenderer: new charts.LineRendererConfig(
                                  includeArea: true, stacked: true),
                              animate: true,
                              animationDuration: Duration(seconds: 5),
                              behaviors: [
                                new charts.ChartTitle('Años',
                                    behaviorPosition:
                                    charts.BehaviorPosition.bottom,
                                    titleOutsideJustification: charts
                                        .OutsideJustification.middleDrawArea),
                                new charts.ChartTitle('Usuarios',
                                    behaviorPosition:
                                    charts.BehaviorPosition.start,
                                    titleOutsideJustification: charts
                                        .OutsideJustification.middleDrawArea),
                                new charts.ChartTitle(
                                  'Tipo de usuario',
                                  behaviorPosition: charts.BehaviorPosition.end,
                                  titleOutsideJustification: charts
                                      .OutsideJustification.middleDrawArea,
                                )
                              ]),
                        ),
                      ],
                    ),
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

class Pollution {
  String place;
  int year;
  int quantity;

  Pollution(this.year, this.place, this.quantity);
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}