// ignore_for_file: depend_on_referenced_packages

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePageGraphWidget extends StatefulWidget {
  const HomePageGraphWidget({
    Key? key,
  }) : super(key: key);

  ///ADDITIONAL DATA

  @override
  State<HomePageGraphWidget> createState() => _HomePageGraphWidgetState();
}

class _HomePageGraphWidgetState extends State<HomePageGraphWidget> {
  ///ADDITIONAL PARAMETERS

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.5.h,
      padding: EdgeInsets.symmetric(
        horizontal: 0.w,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Expanded(
            child: LineChart(
              LineChartData(
                lineTouchData: lineTouchData1,
                gridData: gridData,
                titlesData: titlesData1,
                borderData: borderData,
                lineBarsData: lineBarsData1,
                minX: 0,
                maxX: 14,
                maxY: 4,
                minY: 1,
              ),
              swapAnimationDuration: const Duration(milliseconds: 250),
            ),
          ),
        ],
      ),
    );
  }

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.white,
        ),
      );

  FlGridData get gridData => FlGridData(
        show: true,
        drawVerticalLine: false,
        getDrawingHorizontalLine: (i) {
          return FlLine(
            color: Colors.grey.withOpacity(0.5),
            strokeWidth: 1,
            dashArray: [4, 3],
          );
        },
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(
            color: Colors.white,
            width: 1,
          ),
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
        lineChartBarData1_2,
      ];

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        color: Colors.green,
        gradient: const LinearGradient(
          colors: [
            Colors.green,
            Colors.green,
          ],
        ),
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: true,
        ),
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            colors: [
              Colors.green.withOpacity(0.2),
              Colors.green.withOpacity(0.1)
            ],
          ),
        ),
        spots: const [
          FlSpot(0, 1),
          FlSpot(3, 1.5),
          FlSpot(5, 1.4),
          FlSpot(7, 3.4),
          FlSpot(10, 2),
          FlSpot(12, 2.2),
          FlSpot(13, 1.8),
        ],
      );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
        isCurved: true,
        color: Colors.green,
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: true,
        ),
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            colors: [
              Colors.green.withOpacity(0.2),
              Colors.green.withOpacity(0.1)
            ],
          ),
        ),
        spots: const [
          FlSpot(0, 1),
          FlSpot(3, 2.8),
          FlSpot(7, 1.2),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3.9),
        ],
      );

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 4.w,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  Widget bottomTitleWidgets(value, TitleMeta meta) {
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = Text('1', style: Theme.of(context).textTheme.bodySmall);
        break;
      case 5:
        text = Text('5', style: Theme.of(context).textTheme.bodySmall);
        break;
      case 10:
        text = Text('10', style: Theme.of(context).textTheme.bodySmall);
        break;
      case 15:
        text = Text('15', style: Theme.of(context).textTheme.bodySmall);
        break;
      case 20:
        text = Text('20', style: Theme.of(context).textTheme.bodySmall);
        break;
      case 25:
        text = Text('25', style: Theme.of(context).textTheme.bodySmall);
        break;
      case 30:
        text = Text('30', style: Theme.of(context).textTheme.bodySmall);
        break;
      default:
        text = Text('40', style: Theme.of(context).textTheme.bodySmall);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 20,
      child: text,
    );
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 20,
      );

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff75729e),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '1m';
        break;
      case 2:
        text = '2m';
        break;
      case 3:
        text = '3m';
        break;
      case 4:
        text = '5m';
        break;
      case 5:
        text = '6m';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }
}
