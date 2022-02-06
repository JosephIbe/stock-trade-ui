import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:varens_stock/data/models/charts_data.dart';

Size? size;

// ignore: must_be_immutable
class CoinChart extends StatelessWidget {

  const CoinChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;

    return Container(
      width: size!.width,
      height: 320.0,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child:  SfCartesianChart(
        enableSideBySideSeriesPlacement: true,
        series: <CandleSeries>[
          CandleSeries<ChartsData, dynamic>(
            dataSource: getSampleData(),
            xValueMapper: (ChartsData data, _) => data.weekDay,
            lowValueMapper: (ChartsData data, _) => data.low,
            highValueMapper: (ChartsData data, _) => data.high,
            openValueMapper: (ChartsData data, _) => data.open,
            closeValueMapper: (ChartsData data, _) => data.close,
          ),
        ],
        primaryXAxis: CategoryAxis(
          majorGridLines: const MajorGridLines(width: 0),
          majorTickLines: const MajorTickLines(width: 0),
        ),
        primaryYAxis: NumericAxis(
          opposedPosition: true,
          minimum: 1300,
          maximum: 1800,
          interval: 100,
          numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0, ),
          majorTickLines: const MajorTickLines(width: 0),
        ),
      )
    );

  }

  List<ChartsData> getSampleData() {
    return <ChartsData>[
      const ChartsData(weekDay: 'SUN', open: 1700, high: 1610, low: 1380, close: 1520),

      const ChartsData(weekDay: 'MON', open: 1500, high: 1605, low: 1490, close: 1470),

      const ChartsData(weekDay: 'TUE', open: 1400, high: 1570, low: 1380, close: 1530),

      const ChartsData(weekDay: 'WED', open: 1485, high: 1600, low: 1480, close: 1590),

      const ChartsData(weekDay: 'THU', open: 1600, high: 1690, low: 1590, close: 1660),

      const ChartsData(weekDay: 'FRI', open: 1610, high: 1670, low: 1600, close: 1640),

      const ChartsData(weekDay: 'SAT', open: 1600, high: 1690, low: 1600, close: 1670),
    ];
  }

}