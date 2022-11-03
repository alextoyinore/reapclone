import 'package:flutter/cupertino.dart';
import 'package:reapclone/helpers/colors.dart';
import 'package:reapclone/helpers/space.dart';
import 'package:reapclone/widgets/section_title.dart';

class MoneyRateInfo extends StatelessWidget {
  String topLabel;
  double percent;
  Color color;
  bool isCredit;
  MoneyRateInfo({
    Key? key,
    required this.topLabel,
    required this.percent,
    this.color = RColor.greenStrong,
    this.isCredit = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: this.color.withOpacity(.05),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(this.topLabel),
              Text(
                '${this.percent}%',
                style: TextStyle(
                  color: this.color,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          horizontalspace10,
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                isCredit
                    ? 'assets/images/rising.png'
                    : 'assets/images/dropping.png',
                scale: 1.8,
              ),
              space10,
            ],
          ),
        ],
      ),
    );
  }
}
