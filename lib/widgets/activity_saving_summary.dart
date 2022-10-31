import 'package:flutter/cupertino.dart';
import 'package:reapclone/helpers/colors.dart';
import 'package:reapclone/helpers/space.dart';

class ActivitySavingSummary extends StatelessWidget {
  String amountSaved;
  String plan;
  String interestAccrued;
  String date;
  ActivitySavingSummary({
    Key? key,
    required this.amountSaved,
    required this.plan,
    required this.interestAccrued,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Default colour
    Color color = RColor.primary;

    switch (plan) {
      case 'Reapplus':
        {
          color = RColor.greenStrong;
        }
        break;
      case 'Reapmax':
        {
          color = RColor.purple;
        }
        break;
      default:
        {
          color = RColor.primary;
        }
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: RColor.blueLight.withOpacity(.5)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Amount Saved',
                style: TextStyle(
                  color: RColor.black40,
                  fontSize: 12,
                ),
              ),
              space5,
              Text(
                this.amountSaved,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              space5,
              Container(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                    color: color.withOpacity(.05),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  this.plan,
                  style: TextStyle(
                    color: color,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),

          //Right column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Interest accrued',
                style: TextStyle(
                  color: RColor.black40,
                  fontSize: 12,
                ),
              ),
              space5,
              Text(
                this.interestAccrued,
                style: TextStyle(
                  fontSize: 20,
                  color: RColor.primary,
                  //fontWeight: FontWeight.w500,
                ),
              ),
              space10,
              Row(
                children: [
                  Container(
                    width: 6,
                    height: 6,
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                        color: RColor.green,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  horizontalspace10,
                  Text(
                    this.date,
                    style: TextStyle(
                      fontSize: 11,
                      color: RColor.black40,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
