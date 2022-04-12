/// Package import
import 'package:fitness_uncensored/presentation/pages/progress/sample_view.dart';
import 'package:fitness_uncensored/presentation/routes/app_routes.dart';
import 'package:fitness_uncensored/presentation/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class MultiLevelLabelsSample extends StatefulWidget {
  final Map weight;
  const MultiLevelLabelsSample({required this.weight, Key? key})
      : super(key: key);

  @override
  _MultiLevelLabelsSampleState createState() => _MultiLevelLabelsSampleState();
}

class _MultiLevelLabelsSampleState extends State<MultiLevelLabelsSample> {
  // _MultiLevelLabelsSampleState();

  final List<ChartSampleData> _chartData = <ChartSampleData>[];
  final List<ChartSampleData> _chartData2 = <ChartSampleData>[];

  // List<CategoricalMultiLevelLabel> _xAxisCategories =
  //     <CategoricalMultiLevelLabel>[];
  // late List<String>? _multilevelBorderTypes;
  // late MultiLevelBorderType? _selectedMultilevelBorderType;
  // late String? _selectedBorderType;
  // late bool? _isAxisBorderEnabled;

  @override
  void initState() {
    widget.weight.forEach((key, value) {
      if (value != null) {
        _chartData.add(ChartSampleData(x: key, high: value["weight"]));
      }
    });
    widget.weight.forEach((key, value) {
      if (value != null) {
        _chartData2.add(ChartSampleData(x: key, high: value["id"]));
      }
    });
    // _chartData = <ChartSampleData>[
    //   ChartSampleData(x: 'Mon', high: 24.9),
    //   ChartSampleData(x: 'Tue', high: 26.1),
    //   ChartSampleData(x: 'Wed', high: 25.5),
    //   ChartSampleData(x: 'Thu', high: 29.2),
    //   ChartSampleData(x: 'Fri', high: 21.8),
    //   ChartSampleData(x: 'Sat', high: 19.2),
    //   ChartSampleData(x: 'Sun', high: 20.8),
    //   // ChartSampleData(x: 'Jul', low: 9.6, high: 16.4),
    //   // ChartSampleData(x: 'Aug', low: 10, high: 17.5),
    //   // ChartSampleData(x: 'Sep', low: 12.4, high: 20),
    //   // ChartSampleData(x: 'Oct', low: 14.6, high: 21.9),
    //   // ChartSampleData(x: 'Nov', low: 20, high: 23.2)
    // ];
    // _xAxisCategories = <CategoricalMultiLevelLabel>[
    //   const CategoricalMultiLevelLabel(
    //       start: 'Dec', end: 'Feb', text: 'Summer'),
    //   const CategoricalMultiLevelLabel(
    //       start: 'Mar', end: 'May', text: 'Autumn'),
    //   const CategoricalMultiLevelLabel(
    //       start: 'Jun', end: 'Aug', text: 'Winter'),
    //   const CategoricalMultiLevelLabel(
    //       start: 'Sep', end: 'Nov', text: 'Spring'),
    //   const CategoricalMultiLevelLabel(
    //       start: 'Dec', end: 'Nov', text: 'Year - 2020', level: 1)
    // ];
    // _multilevelBorderTypes = <String>[
    //   'rectangle',
    //   'withoutTopAndBottom',
    //   'squareBrace',
    //   'curlyBrace'
    // ];
    // _selectedMultilevelBorderType = MultiLevelBorderType.rectangle;
    // _selectedBorderType = 'rectangle';
    // _isAxisBorderEnabled = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      // legend: Legend(isVisible: true),
      // title: ChartTitle(
      //   text: 'Average high/low temperature of Sydney',
      // ),
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
        // interval: 1,
        // labelRotation: -90,
        majorGridLines: const MajorGridLines(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
        borderWidth: 0,
        axisLine: const AxisLine(width: 0),
        // multiLevelLabelStyle: MultiLevelLabelStyle(
        //     borderWidth: 1, borderType: _selectedMultilevelBorderType!),
      ),
      primaryYAxis: NumericAxis(
        isVisible: false,
        // minimum: 5,
        // maximum: 30,
        // interval: 5,
        axisLine: const AxisLine(width: 0),
        // labelFormat: '{value}',
        majorTickLines: const MajorTickLines(size: 0),
      ),

      series: _getDefaultDateTimeSeries(),
      // annotations: const [
      //   CartesianChartAnnotation(
      //     verticalAlignment: ChartAlignment.center,
      //     widget: Text('Annotation'),
      //     coordinateUnit: CoordinateUnit.logicalPixel,
      //     region: AnnotationRegion.chart,
      //     x: 50,
      //     y: 60,
      //   ),
      // ],

      // tooltipBehavior: TooltipBehavior(
      //   enable: true,
      //   format: 'point.x : point.y',
      // ),
    );
  }

  /// Returns the Spline chart.
  List<SplineSeries<ChartSampleData, String>> _getDefaultDateTimeSeries() {
    return <SplineSeries<ChartSampleData, String>>[
      SplineSeries<ChartSampleData, String>(
        xAxisName: "Gold",
        dataSource: _chartData,
        xValueMapper: (ChartSampleData data, _) => data.x as String,
        yValueMapper: (ChartSampleData data, _) => data.high,
        width: 2.63.w,
        color: AppColors.primaryColor,
        // name: 'High',
        onPointTap: (pointInteractionDetails) {
          Navigator.push(
              context,
              AppRoutes.progressSingle(
                  id: _chartData2[pointInteractionDetails.pointIndex!]
                      .high
                      .toString()));
        },
        dataLabelMapper: (ChartSampleData chart, int index) =>
            chart.high.toString(),
        dataLabelSettings: const DataLabelSettings(isVisible: true),
        markerSettings: const MarkerSettings(
          width: 12,
          height: 12,
          isVisible: true,
          color: AppColors.tertiaryColor,
          borderColor: AppColors.tertiaryColor,
        ),
      ),
      // SplineSeries<ChartSampleData, String>(
      //   dataSource: _chartData,
      //   xValueMapper: (ChartSampleData data, _) => data.x as String,
      //   yValueMapper: (ChartSampleData data, _) => data.low,
      //   name: 'Low',
      //   markerSettings: const MarkerSettings(isVisible: true),
      // ),
    ];
  }

  /// Method for updating the multi-level axis label borde type on change.
  // void _onMultilevelBorderTypeChanged(String item) {
  //   _selectedBorderType = item;
  //   if (_selectedBorderType == 'rectangle') {
  //     _selectedMultilevelBorderType = MultiLevelBorderType.rectangle;
  //   } else if (_selectedBorderType == 'withoutTopAndBottom') {
  //     _selectedMultilevelBorderType = MultiLevelBorderType.withoutTopAndBottom;
  //   } else if (_selectedBorderType == 'squareBrace') {
  //     _selectedMultilevelBorderType = MultiLevelBorderType.squareBrace;
  //   } else if (_selectedBorderType == 'curlyBrace') {
  //     _selectedMultilevelBorderType = MultiLevelBorderType.curlyBrace;
  //   }
  //   setState(() {
  //     /// update the multi-level border type changes
  //   });
  // }

  @override
  void dispose() {
    _chartData.clear();
    super.dispose();
  }
}
