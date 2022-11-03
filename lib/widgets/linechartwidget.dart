import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reapclone/helpers/colors.dart';
import 'package:reapclone/objects/line_chart_title.dart';

class LineChartWidget extends StatefulWidget {
  const LineChartWidget({super.key});

  @override
  State<LineChartWidget> createState() => _LineChartWidgetState();
}

class _LineChartWidgetState extends State<LineChartWidget> {
  final List<Color> gradient = [
    RColor.blueLight.withOpacity(.5),
    RColor.blueLight.withOpacity(0),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: LineChart(
        LineChartData(
          //backgroundColor: RColor.blueLight.withOpacity(.05),
          titlesData: LineChartTitles.getTitleData(),
          gridData: FlGridData(
            show: false,
          ),
          borderData: FlBorderData(
            show: false,
          ),
          minX: 1,
          maxX: 7,
          minY: 0,
          maxY: 5,
          lineBarsData: [
            LineChartBarData(
              color: RColor.blueLight,
              isCurved: true,
              barWidth: 2,
              dotData: FlDotData(
                show: false,
              ),
              belowBarData: BarAreaData(
                  show: true,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: gradient.map((color) => color).toList(),
                  )),
              spots: [
                FlSpot(1, 2.3),
                FlSpot(2, 2),
                FlSpot(3, 3.3),
                FlSpot(4, 3),
                FlSpot(5, 2.8),
                FlSpot(6, 4),
                FlSpot(7, 4.5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
