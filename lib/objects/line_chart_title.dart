import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:reapclone/helpers/colors.dart';

class LineChartTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(
            reservedSize: 50,
            showTitles: true,
            interval: 2,
            getTitlesWidget: (value, meta) => Column(
              children: [
                (value % 2 == 0 && value > 0)
                    ? Text('${value.toInt()}00k')
                    : SizedBox(),
              ],
            ),
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            reservedSize: 50,
            showTitles: true,
            interval: 1,
            getTitlesWidget: (value, meta) => Row(
              children: [
                (value == 3)
                    ? Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: RColor.blueLight.withOpacity(.5),
                        ),
                        child: Text('${value.toInt()}'),
                      )
                    : Text('${value.toInt()}'),
              ],
            ),
          ),
        ),
      );
}
