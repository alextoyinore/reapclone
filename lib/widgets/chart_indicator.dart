import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reapclone/helpers/space.dart';
import 'package:reapclone/objects/piedata.dart';

class ChartIndicatorWidget extends StatelessWidget {
  const ChartIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: PieData.pieChartData.map((data) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: buildIndicator(
            color: data.color,
            label: data.title,
            isSquare: true,
          ),
        );
      }).toList(),
    );
  }

  buildIndicator({
    required Color color,
    required String label,
    bool isSquare = false,
    double size = 10,
    Color labelColor = const Color(0xff050505),
  }) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: color,
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
          ),
        ),
        horizontalspace10,
        Text(
          label,
          style: TextStyle(
            color: labelColor,
          ),
        ),
      ],
    );
  }
}
