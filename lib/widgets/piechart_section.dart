import 'package:fl_chart/fl_chart.dart';
import 'package:reapclone/objects/piedata.dart';

List<PieChartSectionData> getSections() => PieData.pieChartData
    .asMap()
    .map<int, PieChartSectionData>((index, data) {
      final value = PieChartSectionData(
        showTitle: false,
        color: data.color,
        radius: data.radius,
        value: data.value,
        title: '${data.value}%',
      );
      return MapEntry(index, value);
    })
    .values
    .toList();
