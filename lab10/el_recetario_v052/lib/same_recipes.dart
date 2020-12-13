/// Horizontal bar chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class same_recipes extends StatelessWidget {
  List<charts.Series> seriesList;
  bool animate = false;

  @override
  Widget build(BuildContext context) {
    // For horizontal bar charts, set the [vertical] flag to false.
    seriesList=_createSampleData();
    return new charts.BarChart(
      seriesList,
      animate: animate,
      vertical: true,
      defaultRenderer: new charts.BarRendererConfig(
        // By default, bar renderer will draw rounded bars with a constant
        // radius of 100.
        // To not have any rounded corners, use [NoCornerStrategy]
        // To change the radius of the bars, use [ConstCornerStrategy]
          cornerStrategy: const charts.ConstCornerStrategy(30)),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalVis, String>> _createSampleData() {
    final data = [
      new OrdinalVis('recetas iguales', 5),
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