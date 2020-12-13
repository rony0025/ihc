/// Horizontal bar chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class visit_statistics extends StatelessWidget {
List<charts.Series> seriesList;
bool animate = false;

  @override
  Widget build(BuildContext context) {
    seriesList=_createSampleData();

    return Scaffold(
      backgroundColor: Color(0xff5ac18e),
      body: Center(

        child: new charts.BarChart(
          seriesList,
          animate: animate,
          vertical: false,
        )
      )
    );
    // For horizontal bar charts, set the [vertical] flag to false.

  }

  /// Create one series with sample hard coded data.
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
}

/// Sample ordinal data type.
class OrdinalVis {
  final String year;
  final int visit;

  OrdinalVis(this.year, this.visit);
}