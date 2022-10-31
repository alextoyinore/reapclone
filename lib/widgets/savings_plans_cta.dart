import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SavingsPlansCTA extends StatelessWidget {
  final String image;
  final Color color;
  final String title;
  final String subtitle;
  final double width;
  final Function()? whenTapped;
  SavingsPlansCTA({
    super.key,
    required this.image,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.width,
    this.whenTapped,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: whenTapped,
      child: Container(
        padding: const EdgeInsets.all(8),
        width: this.width,
        decoration: BoxDecoration(
            color: this.color.withOpacity(.1),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: this.color.withOpacity(.1),
                  borderRadius: BorderRadius.circular(50)),
              child: Image.asset(
                this.image,
                scale: 2.5,
                color: this.color,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                this.title,
                //textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              this.subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
