import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:reapclone/helpers/colors.dart';
import 'package:reapclone/helpers/space.dart';

class PortfolioItem extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final Function()? whenTapped;
  PortfolioItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.whenTapped,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: whenTapped,
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: RColor.sky,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              this.image,
              scale: 2.0,
            ),
          ),
          horizontalspace20,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              space5,
              Text(
                this.subtitle,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: RColor.black40,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
