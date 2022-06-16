import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class pieChart extends StatelessWidget{

  late Map<String , double> _dataMap;
  pieChart({required Map<String,double> dataMap}){
    this._dataMap=dataMap;
  }

  @override
  Widget build(BuildContext context) {
    return  PieChart(
      dataMap: _dataMap ,
      animationDuration: Duration(milliseconds: 800),
      chartLegendSpacing: 32,
      chartRadius: MediaQuery.of(context).size.width / 3,
      chartType: ChartType.ring,
      ringStrokeWidth: 32,
      centerText: "EMI",
      legendOptions: LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.bottom,
        showLegends: true,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: true,
        showChartValuesInPercentage: false,
        showChartValuesOutside: true,
        decimalPlaces: 1,
      ),
    );
  }
}