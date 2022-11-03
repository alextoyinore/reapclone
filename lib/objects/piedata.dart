import 'package:flutter/cupertino.dart';
import 'package:reapclone/helpers/colors.dart';

class Data {
  final String title;
  final double value;
  final Color color;
  final double radius;

  Data({
    required this.title,
    required this.value,
    required this.color,
    required this.radius,
  });
}

class PieData {
  static List<Data> pieChartData = [
    Data(
      title: 'Wallet',
      value: 80,
      color: RColor.blueLight.withOpacity(.8),
      radius: 45,
    ),
    Data(
      title: 'Reap savings',
      value: 10,
      color: RColor.blueLight.withOpacity(.4),
      radius: 45,
    ),
    Data(
      title: 'Goal savings',
      value: 10,
      color: RColor.yellow.withOpacity(.8),
      radius: 45,
    )
  ];
}
