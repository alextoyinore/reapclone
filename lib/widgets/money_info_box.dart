import 'package:flutter/cupertino.dart';
import 'package:reapclone/helpers/colors.dart';

class MoneyInfoBox extends StatelessWidget {
  String title;
  String number;
  MoneyInfoBox({
    Key? key,
    required this.title,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: RColor.blueLight.withOpacity(.2),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            this.title,
            style: TextStyle(fontSize: 16),
          ),
          Text(
            this.number,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
