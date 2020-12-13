/// Horizontal bar chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class failed_login extends StatelessWidget {
  List<charts.Series> seriesList;
  bool animate = false;

  @override
  Widget build(BuildContext context) {
    // For horizontal bar charts, set the [vertical] flag to false.
    seriesList=_createSampleData();
    return Scaffold(
        backgroundColor: Color(0xff5ac18e),
    body: Center(

    child: Stack(
        children: <Widget>[ Text(
        "Failed Login Attemps",
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
      new charts.PieChart(seriesList, animate: animate),
    ]
    )));

  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 95),
      new LinearSales(1, 5),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Sales',
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.visit,
        data: data,
        // Set a label accessor to control the text of the arc label.
        labelAccessorFn: (LinearSales row, _) => '${row.year}: ${row.visit}',
      )
    ];
  }
}

/// Sample ordinal data type.
class LinearSales {
  final int year;
  final int visit;

  LinearSales(this.year, this.visit);
}