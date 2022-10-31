import 'package:flutter/cupertino.dart';

class QuickActionIcon extends StatelessWidget {
  final String image;
  final Color color;
  final String label;
  final Function()? whenTapped;
  QuickActionIcon({
    super.key,
    required this.image,
    required this.color,
    required this.label,
    this.whenTapped,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: whenTapped,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 22,
            ),
            decoration: BoxDecoration(
                color: this.color.withOpacity(.1),
                borderRadius: BorderRadius.circular(15)),
            child: Image.asset(
              this.image,
              scale: 1.8,
              color: this.color,
            ),
          ),
          SizedBox(height: 5),
          Text(
            this.label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
